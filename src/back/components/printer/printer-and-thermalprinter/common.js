const isInConfig = (find, args) => {
    return args.config.find(function(element) {
        if (element == find) {
            return true
        }
    })
}
module.exports = { isInConfig }