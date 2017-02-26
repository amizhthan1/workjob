<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post,
    App\Models\Tag;
use App\Mail\PostCreated;
use DB;
use Mail;
use Log;
use Illuminate\Support\Facades\Redis;
class PostController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	//Redis::connection();
    	$storage     =   Redis::connection();
    	
    	//$views       =   $storage->incr('post'.':views');
        //to set redis cache
    	//Redis::get('posts'); 
      //  $posts1 = Redis::get('posts');
        
        $posts = Post::with('tags')->get();            
       // Redis::set('posts',$posts);        
        return response()->json(['status'=>200,'response'=>$posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $post = new Post();
        $post->title = $request->input('title');
        $post->body = $request->input('body');
        $post->save();
        if ($request->has('tags')) {
            $tags_list = $request->input('tags');
            $tags = explode(',', $tags_list);

            foreach ($tags as $tag) {
                $tag_ref = Tag::where('name', $tag)->first();                
                if (is_null($tag_ref)) {
                    $tag_ref = new Tag();
                    $tag_ref->name = $tag;
                    $tag_ref->save();
                    $post->tags()->save($tag_ref);
                } else {
                    $post->tags()->attach($tag_ref->id);
                }
            }
        }
         Mail::to('3393252089@qq.com')->send(new PostCreated($post));
        return response()->json(['staus'=>200,'response'=>'added successfully']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::with('tags')->where('id',$id)->get();
        return response()->json(['status'=>200,'response'=>$post]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post=Post::find($id);
        $tags = DB::table('post_tag')
        ->join('tags', 'tags.id','=','post_tag.tag_id')
        ->where('post_tag.post_id',$post->id)
        ->get();

        foreach ($tags as $key => $value) {
            $tag_array[] = $value->name;
        }
        
        $tags = implode(',', $tag_array);
        return view('posts.edit',compact('post','tags'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post = Post::find($id);
        $post->title = $request->input('title');
        $post->body = $request->input('body');
        $post->save();
        if ($request->has('tags')) {
            $post->tags()->detach();
            $tags_list = $request->input('tags');
            $tags = explode(',', $tags_list);

            foreach ($tags as $tag) {
                $tag_ref = Tag::where('name', $tag)->first();                
                if (is_null($tag_ref)) {
                    $tag_ref = new Tag();
                    $tag_ref->name = $tag;
                    $tag_ref->save();
                    $post->tags()->save($tag_ref);
                } else {
                    $post->tags()->attach($tag_ref->id);
                }
            }
        }
        return response()->json(['status'=>200,'response'=>'Post Updated Successfully']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $post->tags()->detach();
        Log::info('Post deleted: '.$post->title);
        $post->delete();
        return response()->json(['status'=>200,'response'=>'Post data deleted successfully']);
    }

    public function delete()
    {
        $posts = Post::all();
        return view('posts.delete',compact('posts'));

    }
}
