import CalificacionesRepository from '../repositories/clasificaciones-repository-new.js';

export default class CalificacionesService {
    constructor() {
        console.log('Estoy en: MateriasService.constructor()');
        this.CalificacionesRepository = new CalificacionesRepository();
    }

    getAllAsync = async () => {
        console.log(`MateriasService.getAllAsync()`);
        const returnArray = await this.CalificacionesRepository.getAllAsync();
        return returnArray;
    }

    getByIdAsync = async (id) => {
        console.log(`MateriasService.getByIdAsync(${id})`);
        const returnEntity = await this.CalificacionesRepository.getByIdAsync(id);
        return returnEntity;
    }

    createAsync = async (entity) => {
        console.log(`MateriasService.createAsync(${JSON.stringify(entity)})`);
        const rowsAffected = await this.CalificacionesRepository.createAsync(entity);
        return rowsAffected;
    }

    updateAsync = async (entity) => {
        console.log(`MateriasService.updateAsync(${JSON.stringify(entity)})`);
        const rowsAffected = await this.CalificacionesRepository.updateAsync(entity);
        return rowsAffected;
    }
    
    deleteByIdAsync = async (id) => {
        console.log(`MateriasService.deleteByIdAsync(${id})`);
        const rowsAffected = await this.CalificacionesRepository.deleteByIdAsync(id);
        return rowsAffected;
    }

    /*
    getByIdAsync_PPT = async (id) => {
        console.log('Estoy en: CursosService.getByIdAsync_PPT()');
        const returnEntity = await this.CursosRepository.getByIdAsync_PPT(id);
        return returnEntity;
    }
    */
}

