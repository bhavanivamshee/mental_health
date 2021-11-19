export const authReducer = (state = [], action) => {
    switch(action.type){
        case 'FETCH_AUTH':
            return action.payload
        default:
            return state
    }
}