export default (state = [], action) => {
    switch (action.type) {
        case 'FETCH_MEDS':
            return action.payload
            default:
                return state
    }
}