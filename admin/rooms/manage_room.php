<?php
require_once('../../config.php');
if(isset($_GET['id'])){
    $qry = $conn->query("SELECT * FROM `room_list` where id = '{$_GET['id']}'");
    if($qry->num_rows > 0){
        $res = $qry->fetch_array();
        foreach($res as $k => $v){
            if(!is_numeric($k))
            $$k = $v;
        }
    }
}
?>
<style>
	img#cimg{
		height: 17vh;
		width: 25vw;
		object-fit: scale-down;
	}
</style>
<div class="container-fluid">
    <form action="" id="room-form">
        <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="name" class="control-label">Name</label>
                    <input type="text" name="name" id="name" class="form-control form-control-border" placeholder="Enter room Name" value ="<?php echo isset($name) ? $name : '' ?>" required>
                </div>
<!--                 <div class="form-group">
                    <label for="type" class="control-label">Type</label>
                    <select name="type" id="type" class="form-control form-control-border" placeholder="Enter room Name" required>
                        <option value="" <?= !isset($type) ? "selected" : '' ?> disabled> Please Select Here</option>
                        <option <?= isset($type) && $type == 'Single' ? 'selected' : "" ?>>Single</option>
                        <option <?= isset($type) && $type == 'Double' ? 'selected' : "" ?>>Double</option>
                        <option <?= isset($type) && $type == 'Family' ? 'selected' : "" ?>>Family</option>
                    </select>
                </div> -->

                <div class="form-group">
                    <label for="type">Rooms</label>
                    <input type="number" name="type" id="type" class="form-control form-control-border" placeholder="Enter how many room's" value="<?= isset($type) ? $type : '' ?>" required>
                </div>


            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="price" class="control-label">Price</label>
                    <input type="number" step="any" name="price" id="price" class="form-control form-control-border text-right" value ="<?php echo isset($price) ? $price : 0 ?>" required>
                </div>
                <div class="form-group">
                    <label for="status" class="control-label">Status</label>
                    <select name="status" id="status" class="form-control form-control-border" placeholder="Enter room Name" required>
                        <option value="1" <?= isset($status) && $status == 1 ? 'selected' : "" ?>>Active</option>
                        <option value="0" <?= isset($status) && $status == 0 ? 'selected' : "" ?>>Inactive</option>
                    </select>
                </div>
            </div>
        </div>
        
        <div class="form-group">
            <label for="description" class="control-label">Description</label>
            <textarea row="3" name="description" id="description" class="form-control form-control-border text-right summernote" required><?php echo isset($description) ? html_entity_decode($description) : '' ?></textarea>
        </div>

        <div class="form-group col-md-6">
				<label for="" class="control-label">Image</label>
				<div class="custom-file">
	              <input type="file" class="custom-file-input rounded-circle" id="customFile" name="img" onchange="displayImg(this,$(this))">
	              <label class="custom-file-label" for="customFile">Choose file</label>
	            </div>
			</div>
			<div class="form-group col-md-6 d-flex justify-content-center">
				<img src="<?php echo validate_image(isset($image_path) ? $image_path : "") ?>" alt="" id="cimg" class="img-fluid img-thumbnail">
			</div>
        
    </form>
</div>
<script>
    function displayImg(input,_this) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$('#cimg').attr('src', e.target.result);
	        	_this.siblings('.custom-file-label').html(input.files[0].name)
	        }

	        reader.readAsDataURL(input.files[0]);
	    }else{
            $('#cimg').attr('src', "<?php echo validate_image(isset($image_path) ? $image_path : "") ?>");
            _this.siblings('.custom-file-label').html("Choose file")
        }
	}
    $(function(){
        $('#uni_modal').on('shown.bs.modal',function(){
            $('#description').summernote({
                placeholder:'Write the Room Description here.',
                height: '50vh',
		        toolbar: [
		            [ 'style', [ 'style' ] ],
		            [ 'font', [ 'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear'] ],
		            [ 'fontname', [ 'fontname' ] ],
		            [ 'fontsize', [ 'fontsize' ] ],
		            [ 'color', [ 'color' ] ],
		            [ 'para', [ 'ol', 'ul', 'paragraph', 'height' ] ],
		            [ 'table', [ 'table' ] ],
					['insert', ['link', 'picture']],
		            [ 'view', [ 'undo', 'redo', 'fullscreen', 'codeview', 'help' ] ]
		        ]
            })
        })
        $('#uni_modal #room-form').submit(function(e){
            e.preventDefault();
            var _this = $(this)
            $('.pop-msg').remove()
            var el = $('<div>')
                el.addClass("pop-msg alert")
                el.hide()
            start_loader();
            $.ajax({
                url:_base_url_+"classes/Master.php?f=save_room",
				data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
				error:err=>{
					console.log(err)
					alert_toast("An error occured",'error');
					end_loader();
				},
                success:function(resp){
                    if(resp.status == 'success'){
                        location.href = './?page=rooms/view_room&id='+resp.id;
                    }else if(!!resp.msg){
                        el.addClass("alert-danger")
                        el.text(resp.msg)
                        _this.prepend(el)
                    }else{
                        el.addClass("alert-danger")
                        el.text("An error occurred due to unknown reason.")
                        _this.prepend(el)
                    }
                    el.show('slow')
                    $('html,body,.modal').animate({scrollTop:0},'fast')
                    end_loader();
                }
            })
        })
    })
</script>