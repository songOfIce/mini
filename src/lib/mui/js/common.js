function $(id){
    if(id.indexOf('#')!=1){
        return document.getElementById(id);
    }else{
        return document.querySelector
    }
}