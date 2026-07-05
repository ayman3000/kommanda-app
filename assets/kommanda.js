// Kommanda — shared interactions
(function () {
  function revealAll() {
    document.querySelectorAll('.reveal').forEach((el) => el.classList.add('in'));
  }

  function bindReveals() {
    const els = document.querySelectorAll('.reveal:not(.in)');
    if (!('IntersectionObserver' in window)) {
      revealAll();
      return;
    }
    const io = new IntersectionObserver((entries) => {
      entries.forEach((e) => {
        if (e.isIntersecting) {
          e.target.classList.add('in');
          io.unobserve(e.target);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -8% 0px' });
    els.forEach((el) => io.observe(el));
    setTimeout(() => {
      document.querySelectorAll('.reveal:not(.in)').forEach((el) => {
        if (el.getBoundingClientRect().top < window.innerHeight) el.classList.add('in');
      });
    }, 2500);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', bindReveals, { once: true });
  } else {
    bindReveals();
  }

  // Mobile nav toggle
  document.addEventListener('click', (e) => {
    const btn = e.target.closest && e.target.closest('.menu-btn');
    if (!btn) return;
    const nav = document.querySelector('.nav-links');
    if (!nav) return;
    const open = nav.style.display === 'flex';
    nav.style.cssText = open ? '' : 'display:flex;position:absolute;top:64px;left:0;right:0;flex-direction:column;background:#080B12;border-bottom:1px solid var(--border);padding:18px 28px;gap:18px;';
    btn.setAttribute('aria-expanded', String(!open));
  });
})();
