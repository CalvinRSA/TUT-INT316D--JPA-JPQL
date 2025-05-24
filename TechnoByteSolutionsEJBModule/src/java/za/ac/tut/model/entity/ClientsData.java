
package za.ac.tut.model.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author calvin
 */
@Entity
public class ClientsData implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private Long id;
    @Column(name="CLIENT_READING")
    private Integer reading;
    @Column(name="CATEGORY")
    private String category;
    @Temporal(TemporalType.TIMESTAMP)
    private Date readingDate;

    public ClientsData() {
    }

    public ClientsData(Long id, Integer reading, String category, Date readingDate) {
        this.id = id;
        this.reading = reading;
        this.category = category;
        this.readingDate = readingDate;
    }

    public Integer getReading() {
        return reading;
    }

    public void setReading(Integer reading) {
        this.reading = reading;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getReadingDate() {
        return readingDate;
    }

    public void setReadingDate(Date readingDate) {
        this.readingDate = readingDate;
    }

    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ClientsData)) {
            return false;
        }
        ClientsData other = (ClientsData) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.model.entity.ClientsData[ id=" + id + " ]";
    }
    
}
