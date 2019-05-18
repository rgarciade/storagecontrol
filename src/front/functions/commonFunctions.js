const findChangesInObjetExist = (initialObjet, newObjet) => {
    for (var key in newObjet) {
        if (newObjet[key] && initialObjet[key] && (newObjet[key] != initialObjet[key])) {
            return true
        }
    }
    return false
}
module.exports = { findChangesInObjetExist }