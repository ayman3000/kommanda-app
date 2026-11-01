(function(){
  var titles={copy:'~/projects',space:'Reclaim Space',panes:'Two panes',agent:'Ask Kommanda'};
  document.querySelectorAll('.demo-tabs button').forEach(function(b){
    b.addEventListener('click',function(){
      document.querySelectorAll('.demo-tabs button').forEach(function(x){x.setAttribute('aria-selected','false')});
      b.setAttribute('aria-selected','true');
      document.querySelectorAll('.pane').forEach(function(p){p.classList.remove('on')});
      document.getElementById('p-'+b.dataset.pane).classList.add('on');
      var t=document.getElementById('win-title'); if(t) t.textContent=titles[b.dataset.pane];
    });
  });
  var root=document.documentElement,btn=document.getElementById('theme');
  try{var saved=localStorage.getItem('k-theme');if(saved)root.dataset.theme=saved}catch(e){}
  if(btn) btn.addEventListener('click',function(){
    var dark=root.dataset.theme?root.dataset.theme==='dark':matchMedia('(prefers-color-scheme: dark)').matches;
    root.dataset.theme=dark?'light':'dark';
    try{localStorage.setItem('k-theme',root.dataset.theme)}catch(e){}
  });
})();
