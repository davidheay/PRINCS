 
document.querySelector('#warningAttached').onclick = function () {
	swal({
		title: "Seguro?",
		text: "Si se elimina, no se va a recuperar la informacion.",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "Si, borrar!",
		closeOnConfirm: false
	}, function () {
		swal("Borrado!", "El registro ha sido eliminado!", "success");
	});
};

