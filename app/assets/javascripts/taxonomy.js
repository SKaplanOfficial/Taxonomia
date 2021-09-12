function ToggleTLNodeForm() {
    const form = document.getElementById('tl-node-form-container')
    if (form.style.display === 'block') {
        form.style.display = 'none'
    } else {
        form.style.display = 'block'
    }
}

function ToggleEditNodeForm(id) {
    const form = document.getElementById('edit-node-form-container-'+id)
    if (form.style.display === 'block') {
        form.style.display = 'none'
    } else {
        form.style.display = 'block'
    }
}

function ToggleAddChildForm(id) {
    const form = document.getElementById('add-child-form-container-'+id)
    if (form.style.display === 'block') {
        form.style.display = 'none'
    } else {
        form.style.display = 'block'
    }
}

function ToggleDetails(id) {
    const nb1 = document.getElementById('node-buttons-'+id)
    if (nb1.style.display === 'block') {
        nb1.style.display = 'none'
    } else {
        nb1.style.display = 'block'
    }

    const dc1 = document.getElementById('details-container-'+id)
    if (dc1.style.display === 'block') {
        dc1.style.display = 'none'
    } else {
        dc1.style.display = 'block'
    }
}