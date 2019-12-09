const basePrice = (price, vat, decimals = 2) => {
    return (price / ((vat / 100) + 1)).toFixed(decimals)
}
const findChangesInObjetExist = (initialObjet, newObjet) => {

    for (var key in newObjet) {
        if (newObjet.hasOwnProperty(key) && initialObjet.hasOwnProperty(key) && (newObjet[key] != initialObjet[key])) {
            return true
        }
    }
    return false
}

const checkInputs = {
    numberRules: [
        v => !!v || 'Solo admite numeros',
        v => !isNaN(v) || 'solo se admiten caracteres numricos'
    ],
    cifRules: [
        v => !!v || 'minimo 5 letras',
        v => v.length > 5 || 'minimo 5 letras'
    ],
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
    ],
    idMaxLength: [
        v => !!v || 'no es obligatorio',
        v => v.length < 13 || 'maximo 13 caracteres',
    ],
    controlDigit: 1
}
module.exports = { basePrice, findChangesInObjetExist, checkInputs }