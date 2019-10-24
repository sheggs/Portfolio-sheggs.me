import api from '@/services/api'

export default{
    async getAllValues() {
        return api().get('api')
    },
    async queryValues(query){
        return api().get('api/query/'+ query)
    },
    async cleanResponse(junk){
        let junk2 = await junk 
        junk2 = junk2 + ""
        return junk2.substr(0,10);
    }
}