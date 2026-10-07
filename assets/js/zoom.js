// Click-to-enlarge for <a class="zoom-link" href="full.jpg"><img></a>; on touch screens and without JS the link opens the image itself, where pinch-zoom and panning work.
(function () {
  var dialog;

  function build() {
    dialog = document.createElement('dialog');
    dialog.className = 'zoom';
    dialog.setAttribute('aria-label', 'Enlarged image');
    dialog.innerHTML = '<button type="button" class="zoom-close" aria-label="Close">&times;</button><img alt="">';
    dialog.addEventListener('click', function (e) {
      if (e.target.tagName === 'IMG') {
        dialog.classList.toggle('actual');
      } else {
        dialog.close();
      }
    });
    document.body.appendChild(dialog);
  }

  document.addEventListener('click', function (e) {
    var link = e.target.closest ? e.target.closest('a.zoom-link') : null;
    if (!link || typeof HTMLDialogElement !== 'function' || window.matchMedia('(pointer: coarse)').matches) return;
    e.preventDefault();
    if (!dialog) build();
    var img = dialog.querySelector('img');
    var thumb = link.querySelector('img');
    img.src = link.href;
    img.alt = thumb ? thumb.alt : '';
    dialog.classList.remove('actual');
    dialog.showModal();
    dialog.scrollTo(0, 0);
  });
})();
