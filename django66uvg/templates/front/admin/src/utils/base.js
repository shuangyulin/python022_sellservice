const base = {
    get() {
        return {
            url : "http://localhost:8080/django66uvg/",
            name: "django66uvg",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "基于django的4s店客户管理系统"
        } 
    }
}
export default base
