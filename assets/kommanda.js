// Kommanda — shared interactions
(function () {
  // Scroll reveal
  const io = new IntersectionObserver((entries) => {
    entries.forEach((e) => {
      if (e.isIntersecting) { e.target.classList.add('in'); io.unobserve(e.target); }
    });
  }, { threshold: 0.12, rootMargin: '0px 0px -8% 0px' });
  function bindReveals() {
    document.querySelectorAll('.reveal:not(.in)').forEach((el) => io.observe(el));
  }
  document.addEventListener('DOMContentLoaded', bindReveals);
  bindReveals();

  // Mobile nav toggle
  document.addEventListener('click', (e) => {
    const btn = e.target.closest('.menu-btn');
    if (btn) {
      const nav = document.querySelector('.nav-links');
      if (!nav) return;
      const open = nav.style.display === 'flex';
      nav.style.cssText = open ? '' : 'display:flex;position:absolute;top:64px;left:0;right:0;flex-direction:column;background:#080B12;border-bottom:1px solid var(--border);padding:18px 28px;gap:18px;';
    }
  });
})();
