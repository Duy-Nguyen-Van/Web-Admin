@extends('admin.master')
@section('content')
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Store
                        <small>Add</small>
                    </h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-7" style="padding-bottom:120px">
                    @include('admin.blocks.error')
                     {{--  Them hình thì cần enctype  --}}
                    <form action="{{route('admin.store.getAdd')}}" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        
                        <div class="form-group">
                            <label>Name</label>
                            <input class="form-control" name="txtName" placeholder="Nhập tên cửa hàng" value="{!! old('txtName') !!}" />
                        </div>


                        <div class="form-group">
                            <label>Address</label>
                            <textarea class="form-control" name="txtAddress">{{old('txtAddress')}}</textarea>
                        </div>
                        <script type="text/javascript">CKEDITOR.replace('txtAddress');</script>

                        <div class="form-group">
                            <label>Images</label>
                            <input type="file" name="fImages">
                        </div>

                        <button type="submit" class="btn btn-default">Add</button>
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
