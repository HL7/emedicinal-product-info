function toggleDetails(shouldOpen) {
    document.querySelectorAll('details').forEach(d => shouldOpen ? d.setAttribute('open', '') : d.removeAttribute('open'));
}
