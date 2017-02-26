@extends('template')
@section('content')
<h2>Create Post</h2>
<form id="postcreate">
  <div class="form-group">
    <label for="title" class="self">Title</label>
    <input type="text" name="title" class="form-control " id="title" placeholder="Enter title" required>
    
  </div>

  <div class="form-group">
    <label for="body" class="self">Content</label>
    <textarea class="form-control" name="body" id="body" rows="3" required></textarea>
  </div>

  <div class="form-group">
    <label for="title" class="self">Tags</label>
    <input type="text" class="form-control " name="tags" id="tags" placeholder="Enter Tags">
    <small>Enter Tags with commas</small>
    
  </div>


    <button type="submit" class="btn btn-primary" id="postsubmit">Submit</button>
</form>
<div id="results" class="self"></div>
@endsection
@section('script')
<script>
  $(function(){

    $( "form" ).on( "submit", function( event ) {
        //var str = $( "form" ).serialize();
        event.preventDefault();
          $.ajax({
        type:"POST",
        url:" {{ url('posts') }} ",
        data:$('#postcreate').serialize(),
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