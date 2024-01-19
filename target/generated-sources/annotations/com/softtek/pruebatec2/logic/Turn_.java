package com.softtek.pruebatec2.logic;

import com.softtek.pruebatec2.logic.Citizen;
import java.time.LocalDate;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-01-19T21:38:40")
@StaticMetamodel(Turn.class)
public class Turn_ { 

    public static volatile SingularAttribute<Turn, Citizen> citizen;
    public static volatile SingularAttribute<Turn, LocalDate> turnDate;
    public static volatile SingularAttribute<Turn, String> description;
    public static volatile SingularAttribute<Turn, Long> id;
    public static volatile SingularAttribute<Turn, Boolean> turnState;

}