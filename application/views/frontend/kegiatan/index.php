<div id="view">
	<div class="row">
		<div class="col-sm-2">
			<div class="form-group">
				<button onclick="add();" id="add" url="<?= base_url($global->url.'add')?>" class="btn btn-flat btn-block btn-primary"><span class="fa fa-plus"></span> Tambah</button>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<div id="tabel" url="<?= base_url($global->url.'tabel')?>">
				<div class="text-center"><i class="fa fa-refresh fa-spin"></i> Loading data. Please wait...</div>
			</div>
		</div>		
	</div>
</div>
<?php include 'action.php';?>
<script type="text/javascript">
	var url=$('#tabel').attr('url');
	    setTimeout(function () {
        $("#tabels").load(url);
        //alert(url);
    }, 200); 
	    $(document).ready(function(){
		loaddata();
	    })
	    function loaddata(){
			$.ajax({
				url:url,
				// dataType:'json',
				// encode:true,
				success:function(data){
					//globat is array;
					$("#tabel").html(data);
					//console.log(data);
				}
			})	    	
	    }	
</script>