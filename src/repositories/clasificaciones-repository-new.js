import Db from './db-pg.js';

export default class CalificacionesRepository {
    constructor() {
        console.log('Estoy en: CalificacionesRepository.constructor()');
        this.db = new Db();
    }

    getAllAsync = async () => {
        console.log(`CalificacionesRepository.getAllAsync()`);
        const sql = `
        SELECT alumnos.nombre as nombre_alumno, materias.nombre as nombre_materia,* FROM calificaciones 
        inner join alumnos on calificaciones.id_alumno = alumnos.id 
        inner join materias on calificaciones.id_materia = materias.id   
        `;
      
        return await this.db.queryAll(sql);
    }

    getByIdAsync = async (id) => {
        console.log(`CalificacionesRepository.getByIdAsync(${id})`);
        const sql = `
        SELECT alumnos.nombre as nombre_alumno, materias.nombre as nombre_materia,* FROM calificaciones 
        inner join alumnos on calificaciones.id_alumno = alumnos.id 
        inner join materias on calificaciones.id_materia = materias.id   
       where materias.id = $1 
        `;

     
        return await this.db.queryOne(sql, [id]);
    }

    createAsync = async (entity) => {
        console.log(`CalificacionesRepository.createAsync(${JSON.stringify(entity)})`);
        const sql = `INSERT INTO calificaciones (id_alumno, id_materia, nota) VALUES ($1, $2, $3) RETURNING id`;
        const values = [
            entity?.id_alumno ?? 0,
            entity?.id_materia ?? 0,
            entity?.nota ?? null
        ];
        return await this.db.queryReturnId(sql, values);
    }

    updateAsync = async (entity) => {
        console.log(`CalificacionesRepository.updateAsync(${JSON.stringify(entity)})`);
        const sql = `UPDATE calificaciones SET nota = $2 WHERE id = $1 `;
        const values =  [   entity.id, 
                            entity?.nota 
                        ];
        return await this.db.queryRowCount(sql, values);
    }

    deleteByIdAsync = async (id) => {
        console.log(`CalificacionesRepository.deleteByIdAsync(${id})`);
        const sql = `DELETE FROM calificaciones WHERE id=$1`;
        return await this.db.queryRowCount(sql, [id]);
    }
}
