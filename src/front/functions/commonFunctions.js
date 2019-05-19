const findChangesInObjetExist = (initialObjet, newObjet) => {

    for (var key in newObjet) {
        if (newObjet.hasOwnProperty(key) && initialObjet.hasOwnProperty(key) && (newObjet[key] != initialObjet[key])) {
            return true
        }
    }
    return false
}
const checkInputs = {
    telephoneRules: [
        v => !!v || 'Teléfono requerido',
        v => !isNaN(v) || 'solo se admiten caracteres numricos'
    ],
    emailRules: [
        v => !!v || 'E-mail requerido',
        v => /.+@.+/.test(v) || 'debe usar un E-mail valido'
    ],
    nameRules: [
        v => !!v || 'nombre requerido',
        v => v.length > 2 || 'debe tener minimo 3 letras'
    ]
}
module.exports = { findChangesInObjetExist, checkInputs }