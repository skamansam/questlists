var webcomponentsSupported = (
  'registerElement' in document
  && 'import' in document.createElement('link')
  && 'content' in document.createElement('template')
);

if(!webcomponentsSupported){
  var script = document.createElement('script');
  script.async = true;
  script.src = '../bower_components/webcomponentsjs/webcomponents-lite.js';
  //script.onload = finishLazyLoading;
  document.head.appendChild(script);
}else{
  //finishLazyLoading();
}
