

/**
 * 
 */
$(document).ready( function () {
	 var table = $('#categoryTable').DataTable({
			"sAjaxSource": "categorys",
			"sAjaxDataProp": "",
			"order": [[ 0, "asc" ]],
			"aoColumns": [
			    { "mData": "id"},
		      { "mData": "name" }
			]
	 })
});

$(document).ready( function () {
	 var table = $('#supplierTable').DataTable({
			"sAjaxSource": "suppliers",
			"sAjaxDataProp": "",
			"order": [[ 0, "asc" ]],
			"aoColumns": [
			    { "mData": "id"},
		      { "mData": "name" }
			]
	 })
});