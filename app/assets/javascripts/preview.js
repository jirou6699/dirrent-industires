$(document).ready(function () {
  var view_box = $('.View_box');
  var view_text = $('.Preview__image--text');

  $(".Preview__image--file").on('change', function(){
    var fileprop = $(this).prop('files')[0],
    find_img = $(this).next('img'),
    fileRdr = new FileReader();
    
    if(find_img.length){
      find_img.nextAll().remove();
      find_img.remove();
    }
    
    var img = '<img width="200", height="200" alt="" class="Img_view"><br><a href="#" class="img_del">画像を削除する</a>';
    view_box.append(img);
    // view_text.empty();
      fileRdr.onload = function() {    
        view_box.find('img').attr('src', fileRdr.result);
        img_del(view_box); 
      }
      fileRdr.readAsDataURL(fileprop);  
    });
    
    function img_del(target)
    {
      target.find("a.img_del").on('click',function(){
        
        if(window.confirm('画像を削除します。\nよろしいですか？'))
        {
          $(this).parent().find('input[type=file]').val('');
          $(this).parent().find('.Img_view, br').remove();
          $(this).remove();
        }
        return false;
      });
    }  
});