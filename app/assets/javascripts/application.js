// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require jquery.turbolinks
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

// // th要素を隠す
// $(function() {
//   // 以下で、hideメソッドを用いて<h1>要素を隠してください
//   $('th').hide();
  
// });

// // imgをフェードアウト、pをスライドアップ
// $(function() {
//   // 以下で、fadeOutメソッドを用いて<img>要素を隠してください
//   $('img').fadeOut();
  
//   // 以下で、slideUpメソッドを用いて<p>要素を隠してください
//   $('p').slideUp();
  
// });

// // id=titleと.lesson_itemクラスを隠す
// $(function() {
//   // slideUpメソッドを用いて、「#title」の要素を隠してください
//   $('#title').slideUp();
  
//   // fadeOutメソッドを用いて、「.lesson-item」の要素を隠してください
//   $('.lesson-item').fadeOut();
  
// });

// // id titleとimageを表示させる
// $(function() {
//   // showメソッドを用いて、「#title」要素を表示してください
//   $('#title').show();
  
//   // fadeInメソッドを用いて、「#image」要素を表示してください
//   $('#image').fadeIn();
  
// });

// // id hide-textの中にあるh1要素のid textをクリックした時に隠す
// $(function() {
//   // 「#hide-text」要素に対するclickイベントを作成してください
//   $('#hide-text').click(function() {
//     $('#text').slideUp();
//   });
// });

// // li要素の中のlist-itemクラスをクリックした時に文字を赤くする
// $(function() {
//   // 「.list-item」要素に対するclickイベントを作成してください
//   $('.list-item').click(function() {
//     $(this).css('color', 'red');
//   });
// });

// // 変数を使って書き換える
// $(function() {
//   $('.btn').click(function() {
//     // $('#title')を変数$titleに代入してください
//     var $title = $('#title');
    
    
//     // 「#title」に対する3つのメソッドを、変数を使って書き換えてください
//     $title.css('color', 'red');
//     $title.html('こんばんは、にんじゃわんこさん');
//     $title.fadeOut(1000);
    
//     // 「#text」に対する3つのメソッドを、メソッドチェーンを使って書き換えてください
//     $('#text').css('color', 'blue').html('<h3>jQueryをマスターしましょう！</h3>').fadeOut(1000);
//   });
// });

// // #language-wrapperにマウスホバーした時、language-textの内容を表示させる
// $(function() {
//   // 「#language-wrapper」にhoverしたときのhoverイベントを作成してください
//   $('#language-wrapper').hover(
//     function(){
//       $('.language-text').fadeIn();
//       },
//      function(){
//        $('.language-text').fadeOut();
//       }
//   );
// });

$(function() {
  // 「#login-show」要素に対するclickイベントを作成してください
  $('#login-show').click(function(){
    $('#login-modal').fadeIn();
  });
});