export const fetchMedication = () => {
    return (dispatch) => {
        fetch('http://127.0.0.1:3000/medications')
        .then(resp => resp.json())
        .then(medications => console.log('fetchMedication', medications))
    }
}