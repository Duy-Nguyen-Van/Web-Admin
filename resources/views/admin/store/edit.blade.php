@extends('admin.master')
@section('content')
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Store
                        <small>Edit</small>
                    </h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-7" style="padding-bottom:120px">
                    @include('admin.blocks.error')
                    <form action="{{route('admin.store.getEdit', $item->id)}}" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <div class="form-group">
                            <label>Name</label>
                            <input class="form-control" name="txtName" value="{{$item->name}}" required/>
                        </div>      
                        
                        {{--  Địa chỉ cửa hàng  --}}
                        <div class="form-group">
                            <label>Address</label>
                            <textarea class="form-control" name="txtDescription">{{$item->address}}</textarea>
                        </div>
                        <script type="text/javascript">CKEDITOR.replace('txtDescription');</script>

                        {{--  Hình ảnh hiện tại  --}}
                        <div class="form-group">
                            <label>Current image</label><br>
                            <!-- <img src="{!! url('../resources/images/'.$item->image) !!}" class="image_current" style="width:250px; height:250px"> -->
                            <img src="{{$item->image}}" class="image_current" style="width:250px; height:250px">
                            <input type="hidden" name="img_crurent" value="{{$item->image}}">
                        </div>

                        {{--  Hình ảnh mới  --}}
                        <div class="form-group">
                            <label>Images</label>
                            <input type="file" name="fImages">
                        </div>
                        <button type="submit" class="btn btn-default">Edit</button>
                        <button type="reset" class="btn btn-default">Cancel</button>
                    <form>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
@endsection
