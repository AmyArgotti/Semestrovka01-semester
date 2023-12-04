package repository;

import models.FileInfo;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.UUID;

public class FileServiceImpl implements FileService{
    private FilesRepository filesRepository;

    public FileServiceImpl(FilesRepository filesRepository) {
        this.filesRepository = filesRepository;
    }

    public void saveFileToStorage(InputStream file, String originalName,String contentType ,Long size){
        FileInfo fileInfo = FileInfo.builder()
                .originalName(originalName)
                .storageName(UUID.randomUUID().toString())
                .size(size)
                .type(contentType)
                .build();
        try {
            Files.copy(file, Paths.get("/Users/Myriam/Downloads/Semestrovka01-semester/src/main/webapp/photos/" + fileInfo.getStorageName() + "." + fileInfo.getType().split("/")[1]));
            filesRepository.save(fileInfo);
        } catch (IOException e) {
            throw new IllegalArgumentException(e);
        }
    }
    public void writeFileFormStorage(Long fileId, OutputStream outputStream){
        FileInfo fileInfo= filesRepository.findById(fileId);
        File file= new File("/Users/Myriam/Downloads/Semestrovka01-semester/src/main/webapp/photos/"+fileInfo.getStorageName()+"."+fileInfo.getType().split("/")[1]);
        try {
            Files.copy(file.toPath(),outputStream);
        }catch (IOException e){
            throw new IllegalArgumentException();
        }
    }

    public FileInfo getFileInfo(Long fileId){
        return filesRepository.findById(fileId);
    }

}