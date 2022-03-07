import Utils from './Utils.js';
export default class Main {
    static styles=false;
    //constructor(_list, basePath)
    constructor(_list) {
        //拼接图片的路径
        //if (basePath) _list.img = basePath + _list.img;
        this.elem = this.createElem(_list);
    }
    createElem(_list) {
        if(this.elem) return this.elem;
        let div = Utils.createE("div");
        //li.className = "pro clearfix";
        //页面结构
        div.innerHTML = `<li><img src="${_list.images[0]}"/><div class="des"><p></p><a href="">+ 查看详情</a></div></li>`;
        return div;
    }
    appendTo(parent) {
        Utils.appendTo(this.elem, parent);
    }
}
