
$(function() {
	switch (menu) {

	case 'Product':
		$('#listProducts').addClass('active');
		break;

	case 'Category':
		$('#category').addClass('active');
		break;

	case 'Register':
		$('#register').addClass('active');
		break;

	case 'Login':
		$('#login').addClass('active');
		break;

	default:
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	}
});