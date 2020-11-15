var helangSearch={
    /* Ԫ�ؼ� */
    els:{},
    /* ����������� */
    searchIndex:0,
    /* ���ȵ������б� */
    hot:{
        /* ��ɫ */
        color:['#ff2c00','#ff5a00','#ff8105','#fd9a15','#dfad1c','#6bc211','#3cc71e','#3cbe85','#51b2ef','#53b0ff'],
        /* �б� */
        list:[
            '��ҳ��Ч',
            'jQuery��Ч',
            'webǰ�˴���',
            'ͼƬ�ֲ�',
            'ͼƬ�л�',
            '��Ӧʽ����',
            '������',
            '����',
            'QQ����'
        ]
    },
    /* ��ʼ�� */
    init:function(){
        var _this=this;
        this.els={
            pickerBtn:$(".picker"),
            pickerList:$(".picker-list"),
            logo:$(".logo"),
            hotList:$(".hot-list"),
            input:$("#search-input"),
            button:$(".search")
        };

        /* �������������б� */
        this.els.hotList.html(function () {
            var str='';
            $.each(_this.hot.list,function (index,item) {
                str+='<a href="https://www.baidu.com/s?ie=utf8&oe=utf8&tn=98010089_dg&ch=11&wd='+item+'" target="_blank">'
                    +'<div class="number" style="color: '+_this.hot.color[index]+'">'+(index+1)+'</div>'
                    +'<div>'+item+'</div>'
                    +'</a>';
            });
            return str;
        });

        /* ע���¼� */
        /* �������ѡ��ť */
        this.els.pickerBtn.click(function () {
            if(_this.els.pickerList.is(':hidden')) {
                setTimeout(function () {
                    _this.els.pickerList.show();
                },100);
            }
        });
        /* �������ѡ���б� */
        this.els.pickerList.on("click",">li",function () {
            _this.els.logo.css("background-image",('url(img/'+$(this).data("logo")+')'));
            _this.searchIndex=$(this).index();
        });
        /* ���� ����� ���*/
        this.els.input.click(function () {
            if(!$(this).val()){
                setTimeout(function () {
                    _this.els.hotList.show();
                },100);
            }
        });
        /* ���� ����� ����*/
        this.els.input.on("input",function () {
            if($(this).val()){
                _this.els.hotList.hide();
            }
        });
        /* ������ť */
        this.els.button.click(function () {
            var searchArr=['�ٶ�','�ѹ�','��Ӧ','�ȸ�'];
            alert(searchArr[_this.searchIndex]+"������"+_this.els.input.val());
        });
        /* �ĵ� */
        $(document).click(function () {
            _this.els.pickerList.hide();
            _this.els.hotList.hide();
        });
        /* ������ť */
    }
};00000000000000000000000000