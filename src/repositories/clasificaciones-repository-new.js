import Db from './db-pg.js';

export default class CalificacionesRepository {
    constructor() {
        console.log('Estoy en: CalificacionesRepository.constructor()');
        this.db = new Db();
    }

    getAllAsync = async () => {
        console.log(`CalificacionesRepository.getAllAsync()`);
        const sql = `
        SELECT alumno.nombre as nombre_alumno, materia.nombre as nombre_materia,* FROM Calificaciones 
        inner join alumno on calificaciones.id_alumno = alumno.id 
        inner join alumno on calificaciones.id_materia = materias.id   
        `;
      
        return await this.db.queryAll(sql);
    }

    getByIdAsync = async (id) => {
        console.log(`CalificacionesRepository.getByIdAsync(${id})`);
        const sql = `
        SELECT alumno.nombre as nombre_alumno, materia.nombre as nombre_materia,* FROM Calificaciones 
        inner join alumno on calificaciones.id_alumno = alumno.id 
        inner join alumno on calificaciones.id_materia = materias.id   
       where id = $1 
        `;

     
        return await this.db.queryOne(sql, [id]);
    }

    createAsync = async (entity) => {
        console.log(`CalificacionesRepository.createAsync(${JSON.stringify(entity)})`);
        const sql = `SELECT alumno.nombre as nombre_alumno, materia.nombre as nombre_materia,* FROM Calificaciones 
        inner join alumno on calificaciones.id_alumno = alumno.id 
        inner join alumno on calificaciones.id_materia = materias.id   
        where id_alumno = $1 
        `;
        const values = [entity?.id_alumno ?? 0];
        return await this.db.queryReturnId(sql, values);
    }

    updateAsync = async (entity) => {
        console.log(`CalificacionesRepository.updateAsync(${JSON.stringify(entity)})`);
        const sql = `UPDATE Calificaciones SET nombre = $2 WHERE id = $1`;
        const values =  [   entity.id, 
                            entity?.nombre ?? ''
                        ];
        return await this.db.queryRowCount(sql, values);
    }

    deleteByIdAsync = async (id) => {
        console.log(`CalificacionesRepository.deleteByIdAsync(${id})`);
        const sql = `DELETE FROM Calificaciones WHERE id=$1`;
        return await this.db.queryRowCount(sql, [id]);
    }
}
