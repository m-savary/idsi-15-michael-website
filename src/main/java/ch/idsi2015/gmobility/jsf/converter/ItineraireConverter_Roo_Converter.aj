// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ch.idsi2015.gmobility.jsf.converter;

import ch.idsi2015.gmobility.domain.Itineraire;
import ch.idsi2015.gmobility.jsf.converter.ItineraireConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect ItineraireConverter_Roo_Converter {
    
    declare @type: ItineraireConverter: @FacesConverter("ch.idsi2015.gmobility.jsf.converter.ItineraireConverter");
    
    public Object ItineraireConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Itineraire.findItineraire(id);
    }
    
    public String ItineraireConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Itineraire ? ((Itineraire) value).getId().toString() : "";
    }
    
}
