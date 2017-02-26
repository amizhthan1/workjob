<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post,
    App\Models\Tag;
use DB;
class TagController extends Controller
{

   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tags = Tag::with('posts')->where('id',$id)->get();
        foreach ($tags as $key => $value) {
            $post_count=count($value->posts);
        }
        return response()->json(['status'=>200,'post_count'=>$post_count,'response'=>$tags]);
    }
}
