        var editor = null;
        window.onload = function() {
        editor = CKEDITOR.replace( 'content', {
            customConfig:'ckeditor4.5.1/config.js',
        
            on: {
                instanceReady: function( ev ) {
                    this.dataProcessor.writer.setRules( 'p', {
                        indent: false,
                        breakBeforeOpen: false,   //<p>之前不加换行
                        breakAfterOpen: false,    //<p>之后不加换行
                        breakBeforeClose: false,  //</p>之前不加换行
                        breakAfterClose: false    //</p>之后不加换行7
                    });
                }
            }
        });
    };
    
      //设置ckeditor实例
    window.onload = function(){
        editor = CKEDITOR.replace('content',{uiColor: '#9AB8F3', language:'zh-cn'}); //参数‘content’是textarea元素的name属性值，而非id属性值   
    }
    editor.setData('这里是需要传递给CKEditor编辑器实例的值');
    editor.getData();
    
    //更新textarea元素,用request.getParameter('content')获取CKEditor编辑器的值
    function modify_save(){
        editor.updateElement(); //非常重要的一句代码
        //前台验证工作9
        //提交到后台
    }