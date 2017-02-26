@extends('template')
@section('content')
<h2>Edit Post</h2>
<form id="postedit">
  <div class="form-group">
    <label for="title" class="self">Title</label>
    <input type="text" name="title" class="form-control " id="title" value="{{$post->title}}" required>
    
  </div>

  <div class="form-group">
    <label for="body" class="self">Content</label>
    <textarea class="form-control" name="body" id="body" rows="3" required>{{$post->body}}</textarea>
  </div>

  <div class="form-group">
    <label for="title" class="self">Tags</label>
    <input type="text" class="form-control " name="tags" id="tags" value="{{$tags}}">
    <small>Enter Tags with commas</small>
    <input type="hidden" id="post_id" value="{{$post->id}}">
    
  </div>


    <button type="submit" class="btn btn-primary" id="postUpdate">Submit</button>
</form>
<div id="results" class="self"></div>

@endsection
@section('script')
<script>
  $(function(){

    $( "form" ).on( "submit", function( event ) {
        var post_id = $( "#post_id" ).val();
        event.preventDefault();
          $.ajax({
        type:"POST",
        url:" {{ url('posts/')}}"+'/'+post_id,
        data:$('#postedit').serialize(),
        dataType: 'json',
        success: function(data){
            $("#results").html(data.response);
           // alert(data);
        },
        error: function(data){

        }
    })
    });

  });

</script>
@endsection