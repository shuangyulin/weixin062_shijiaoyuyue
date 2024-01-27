const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm45k9p/",
            name: "ssm45k9p",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm45k9p/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "微信小程序的健身房私教预约系统"
        } 
    }
}
export default base
