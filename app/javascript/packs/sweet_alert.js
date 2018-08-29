// ES6 Modules or TypeScript
import swal from 'sweetalert2'



const btns = document.querySelectorAll(".cart-btn");


btns.forEach((btn) => {

  btn.addEventListener('click', (event) => {

    const num = document.getElementById("num-items");
    const amount = parseInt(num.innerText) + 1;
    num.innerText = amount;

    const prt = document.getElementById("prtn");
    const qtn = parseInt(prt.innerText) - 1;
    prt.innerText = qtn;


    const swalWithBootstrapButtons = swal.mixin({
      confirmButtonClass: 'btn btn-success',
      cancelButtonClass: 'btn btn-danger',
      buttonsStyling: false,
    });

    swalWithBootstrapButtons({
      title: 'Add to Cart!',
      type: 'success',
      showCancelButton: true,
      confirmButtonText: 'Go to cart!',
      cancelButtonText: 'More Foods!',
      reverseButtons: true
    }).then((result) => {
        if (result.value) {

        window.location.href = "/dashboard#pills-shopping-cart"
        } else if (
        result.dismiss === swal.DismissReason.cancel
        );

      });
  });
});






