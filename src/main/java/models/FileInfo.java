package models;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@EqualsAndHashCode
@ToString
public class FileInfo {
    private Long id;
    private String originalName;
    private String storageName;
    private Long size ;
    private String type;

}
