package repository;

import models.FileInfo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;

public class FilesRepositoryJdbcImpl implements FilesRepository{
    private DataSource dataSource;
    private final static String SQL_INSERT_FILE_UPLOAD= "INSERT INTO files_information(file_name,original_name, type, size) VALUES (?,?,?,?)";

    private final static String SQL_SELECT_BY_ID= "SELECT * FROM files_information WHERE id = ?";
    private final static String SQL_SELECT= "SELECT * FROM files";
    private JdbcTemplate jdbcTemplate;

    public FilesRepositoryJdbcImpl(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    private RowMapper<FileInfo>fileRowMapper= (row, rowMapper)->
            FileInfo.builder()
                    .id(row.getLong("id"))
                    .originalName(row.getString("original_name"))
                    .storageName(row.getString("storage_name"))
                    .size(row.getLong("size"))
                    .type(row.getString("type"))
                    .build();
    public void save(FileInfo entity){
        jdbcTemplate.update(SQL_INSERT_FILE_UPLOAD,entity.getStorageName(),entity.getOriginalName(),entity.getType(),entity.getSize());
    }
    public FileInfo findById(Long id){
        return jdbcTemplate.queryForObject(SQL_SELECT_BY_ID,fileRowMapper,id );
    }

}