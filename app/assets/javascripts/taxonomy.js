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