import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.querySelector('.sweetalert');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Plus d'éthanol",
        text: "ENCORE PLUS D ETHANOL!!!",
        icon: "success"
      });
    });
  }
}

export { bindSweetAlertButtonDemo };
