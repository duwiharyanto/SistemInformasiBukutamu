<div class="btn-group">
	<a href="#" id="<?=$row->kegiatan_id?>" url="<?= base_url($global->url.'detail')?>" class="detail btn btn-flat btn-xs btn-warning <?= $global->detail!=true ? 'hide':'' ?>"><span class="fa fa-eye"></span></a>
	<a href="javascript:void(0)"   id="<?=$row->kegiatan_id?>" url="<?= base_url($global->url.'edit')?>" onclick="edit()"  class="btn btn-flat btn-xs btn-info <?= $global->edit!=true ? 'hide':'' ?>"><span class="fa fa-pencil"></span></a>
	<a href="#"   url="<?=base_url($global->url.'hapus/'.$row->kegiatan_id)?>"  class="hapus btn btn-flat btn-xs btn-danger <?= $global->delete!=true ? 'hide':'' ?>"><span class="fa fa-trash"></span></a>
</div>