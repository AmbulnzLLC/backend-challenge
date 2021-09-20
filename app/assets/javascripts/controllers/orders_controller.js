stimulus.register("orders", class extends Stimulus.Controller {
  static targets = ["items", "add", "remove"]

  calculate() {
    const formdata = new FormData(this.element)
    formdata.delete('authenticity_token')
    const csrf = $('[name="csrf-token"]').attr('content')

    const setHeaders = (request) => {
      request.setRequestHeader('X-CSRF-Token', csrf);
    }

    $.ajax({
      beforeSend: setHeaders,
      type: 'POST',
      dataType: 'script',
      url: `/orders/calculate_costs`,
      data: Object.fromEntries(formdata),
    });
  }
})
