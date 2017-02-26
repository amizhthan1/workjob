@extends('template')
@section('content')
<h2>Delete Posts</h2>
@foreach($posts as $post)
<h2>{{ $post->title }}</h2>
<button name="delete" class="delete_button" value="{{$post->id}}">Delete</button>
@endforeach
@endsection
@section('script')
<script>
  $(function(){

    $(".delete_button").click(function(){
      var delID = $(this).val();
      $.ajax({
        type:"GET",
        url:" {{ url('posts/destroy/') }}"+'/'+delID,
        dataType: 'json',
        success: function(data){
          alert(data);
            $("#results").html(data.response);
           // alert(data);
        },
        error: function(data){

        }
    })

    })

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