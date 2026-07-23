<mxfile host="app.diagrams.net">
  <diagram name="Página-1" id="elG_KYXdNcigJ40wHXzi">
    <mxGraphModel dx="3535" dy="1995" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <UserObject label="" mermaidData="{&#xa;  &quot;data&quot;: &quot;erDiagram\n    %% SEGURIDAD Y CUENTAS\n    CUENTA ||--o{ TOKEN : \&quot;1 : N\&quot;\n    CUENTA ||--o| USUARIO : \&quot;1 : 1\&quot;\n    CUENTA ||--o| PERSONAL : \&quot;1 : 1\&quot;\n\n    %% CATALOGO Y LIBROS\n    CATEGORIA ||--o{ LIBRO : \&quot;1 : N\&quot;\n    LIBRO ||--o{ EJEMPLAR : \&quot;1 : N\&quot;\n    LIBRO ||--o{ LIBRO_AUTOR : \&quot;1 : N\&quot;\n    AUTOR ||--o{ LIBRO_AUTOR : \&quot;1 : N\&quot;\n\n    %% PRESTAMOS\n    USUARIO ||--o{ PRESTAMO : \&quot;1 : N\&quot;\n    EJEMPLAR ||--o{ PRESTAMO : \&quot;1 : N\&quot;\n\n    %% EVENTOS Y SALAS\n    SALA ||--o{ ACTIVIDAD : \&quot;1 : N\&quot;\n    PERSONAL ||--o{ ACTIVIDAD : \&quot;1 : N\&quot;\n    USUARIO ||--o{ USUARIO_ACTIVIDAD : \&quot;1 : N\&quot;\n    ACTIVIDAD ||--o{ USUARIO_ACTIVIDAD : \&quot;1 : N\&quot;\n\n    CUENTA {\n        int id_cuenta PK\n        string email\n        string password_hash\n        string rol_sistema\n        string estado_cuenta\n        date fecha_creacion\n        date ultimo_login\n    }\n\n    TOKEN {\n        int id_token PK\n        int cuenta_id FK\n        string token_hash\n        string tipo_token\n        date fecha_emision\n        date fecha_expiracion\n        boolean revocado\n        string ip_origen\n    }\n\n    USUARIO {\n        int id_usuario PK\n        int cuenta_id FK\n        string nombre\n        string tipo_usuario\n        string necesidad_accesibilidad\n        string telefono\n        string direccion\n        date fecha_registro\n    }\n\n    PERSONAL {\n        int id_personal PK\n        int cuenta_id FK\n        string nombre\n        string rol\n        boolean capacitacion_accesibilidad\n    }\n\n    CATEGORIA {\n        int id_categoria PK\n        string nombre\n    }\n\n    LIBRO {\n        int id_libro PK\n        string titulo\n        string isbn\n        int categoria_id FK\n        string idioma\n        string formato_accesible\n    }\n\n    EJEMPLAR {\n        int id_ejemplar PK\n        int libro_id FK\n        string estado\n        string ubicacion\n    }\n\n    AUTOR {\n        int id_autor PK\n        string nombre\n    }\n\n    LIBRO_AUTOR {\n        int libro_id PK,FK\n        int autor_id PK,FK\n    }\n\n    PRESTAMO {\n        int id_prestamo PK\n        int usuario_id FK\n        int ejemplar_id FK\n        date fecha_prestamo\n        date fecha_devolucion_prevista\n        date fecha_devolucion_real\n        string estado\n    }\n\n    SALA {\n        int id_sala PK\n        string nombre\n        string tipo\n        boolean accesible\n    }\n\n    ACTIVIDAD {\n        int id_actividad PK\n        string nombre\n        string tipo\n        date fecha\n        int sala_id FK\n        int responsable_id FK\n    }\n\n    USUARIO_ACTIVIDAD {\n        int usuario_id PK,FK\n        int actividad_id PK,FK\n        date fecha_inscripcion\n    }\n&quot;,&#xa;  &quot;config&quot;: null&#xa;}" id="u3UPFYJnNARNXO4wWFAY-1">
          <mxCell connectable="0" parent="1" style="group;transparentBounds=1;editIcon=1;lockedGroup=0;groupPadding=10;" vertex="1">
            <mxGeometry as="geometry" />
          </mxCell>
        </UserObject>
        <UserObject label="CUENTA" mermaidId="n:CUENTA" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="CUENTA" id="u3UPFYJnNARNXO4wWFAY-2">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="344" width="247" x="252" y="30" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-3" parent="u3UPFYJnNARNXO4wWFAY-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="247" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-4" parent="u3UPFYJnNARNXO4wWFAY-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-5" parent="u3UPFYJnNARNXO4wWFAY-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_cuenta" vertex="1">
          <mxGeometry height="43" width="137" x="64" as="geometry">
            <mxRectangle height="43" width="137" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-6" parent="u3UPFYJnNARNXO4wWFAY-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="201" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-7" parent="u3UPFYJnNARNXO4wWFAY-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="247" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-8" parent="u3UPFYJnNARNXO4wWFAY-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-9" parent="u3UPFYJnNARNXO4wWFAY-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="email" vertex="1">
          <mxGeometry height="43" width="137" x="64" as="geometry">
            <mxRectangle height="43" width="137" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-10" parent="u3UPFYJnNARNXO4wWFAY-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="201" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-11" parent="u3UPFYJnNARNXO4wWFAY-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="247" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-12" parent="u3UPFYJnNARNXO4wWFAY-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-13" parent="u3UPFYJnNARNXO4wWFAY-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="password_hash" vertex="1">
          <mxGeometry height="43" width="137" x="64" as="geometry">
            <mxRectangle height="43" width="137" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-14" parent="u3UPFYJnNARNXO4wWFAY-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="201" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-15" parent="u3UPFYJnNARNXO4wWFAY-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="247" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-16" parent="u3UPFYJnNARNXO4wWFAY-15" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-17" parent="u3UPFYJnNARNXO4wWFAY-15" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="rol_sistema" vertex="1">
          <mxGeometry height="43" width="137" x="64" as="geometry">
            <mxRectangle height="43" width="137" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-18" parent="u3UPFYJnNARNXO4wWFAY-15" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="201" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-19" parent="u3UPFYJnNARNXO4wWFAY-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="247" y="215" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-20" parent="u3UPFYJnNARNXO4wWFAY-19" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-21" parent="u3UPFYJnNARNXO4wWFAY-19" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="estado_cuenta" vertex="1">
          <mxGeometry height="43" width="137" x="64" as="geometry">
            <mxRectangle height="43" width="137" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-22" parent="u3UPFYJnNARNXO4wWFAY-19" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="201" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-23" parent="u3UPFYJnNARNXO4wWFAY-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="247" y="258" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-24" parent="u3UPFYJnNARNXO4wWFAY-23" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-25" parent="u3UPFYJnNARNXO4wWFAY-23" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_creacion" vertex="1">
          <mxGeometry height="43" width="137" x="64" as="geometry">
            <mxRectangle height="43" width="137" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-26" parent="u3UPFYJnNARNXO4wWFAY-23" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="201" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-27" parent="u3UPFYJnNARNXO4wWFAY-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="247" y="301" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-28" parent="u3UPFYJnNARNXO4wWFAY-27" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-29" parent="u3UPFYJnNARNXO4wWFAY-27" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="ultimo_login" vertex="1">
          <mxGeometry height="43" width="137" x="64" as="geometry">
            <mxRectangle height="43" width="137" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-30" parent="u3UPFYJnNARNXO4wWFAY-27" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="201" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="TOKEN" mermaidId="n:TOKEN" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="TOKEN" id="u3UPFYJnNARNXO4wWFAY-31">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="387" width="274" x="30" y="493" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-32" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-33" parent="u3UPFYJnNARNXO4wWFAY-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-34" parent="u3UPFYJnNARNXO4wWFAY-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_token" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-35" parent="u3UPFYJnNARNXO4wWFAY-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-36" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-37" parent="u3UPFYJnNARNXO4wWFAY-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-38" parent="u3UPFYJnNARNXO4wWFAY-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="cuenta_id" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-39" parent="u3UPFYJnNARNXO4wWFAY-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-40" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-41" parent="u3UPFYJnNARNXO4wWFAY-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-42" parent="u3UPFYJnNARNXO4wWFAY-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="token_hash" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-43" parent="u3UPFYJnNARNXO4wWFAY-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-44" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-45" parent="u3UPFYJnNARNXO4wWFAY-44" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-46" parent="u3UPFYJnNARNXO4wWFAY-44" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="tipo_token" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-47" parent="u3UPFYJnNARNXO4wWFAY-44" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-48" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="215" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-49" parent="u3UPFYJnNARNXO4wWFAY-48" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-50" parent="u3UPFYJnNARNXO4wWFAY-48" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_emision" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-51" parent="u3UPFYJnNARNXO4wWFAY-48" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-52" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="258" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-53" parent="u3UPFYJnNARNXO4wWFAY-52" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-54" parent="u3UPFYJnNARNXO4wWFAY-52" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_expiracion" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-55" parent="u3UPFYJnNARNXO4wWFAY-52" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-56" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="301" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-57" parent="u3UPFYJnNARNXO4wWFAY-56" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="boolean" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-58" parent="u3UPFYJnNARNXO4wWFAY-56" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="revocado" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-59" parent="u3UPFYJnNARNXO4wWFAY-56" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-60" parent="u3UPFYJnNARNXO4wWFAY-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="274" y="344" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-61" parent="u3UPFYJnNARNXO4wWFAY-60" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-62" parent="u3UPFYJnNARNXO4wWFAY-60" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="ip_origen" vertex="1">
          <mxGeometry height="43" width="146" x="82" as="geometry">
            <mxRectangle height="43" width="146" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-63" parent="u3UPFYJnNARNXO4wWFAY-60" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="228" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="USUARIO" mermaidId="n:USUARIO" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="USUARIO" id="u3UPFYJnNARNXO4wWFAY-64">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="380" width="308" x="221.5" y="930" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-65" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="308" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-66" parent="u3UPFYJnNARNXO4wWFAY-65" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-67" parent="u3UPFYJnNARNXO4wWFAY-65" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_usuario" vertex="1">
          <mxGeometry height="43" width="198" x="64" as="geometry">
            <mxRectangle height="43" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-68" parent="u3UPFYJnNARNXO4wWFAY-65" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="262" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-69" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="308" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-70" parent="u3UPFYJnNARNXO4wWFAY-69" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-71" parent="u3UPFYJnNARNXO4wWFAY-69" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="cuenta_id" vertex="1">
          <mxGeometry height="43" width="198" x="64" as="geometry">
            <mxRectangle height="43" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-72" parent="u3UPFYJnNARNXO4wWFAY-69" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="262" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-73" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="308" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-74" parent="u3UPFYJnNARNXO4wWFAY-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-75" parent="u3UPFYJnNARNXO4wWFAY-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="nombre" vertex="1">
          <mxGeometry height="43" width="198" x="64" as="geometry">
            <mxRectangle height="43" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-76" parent="u3UPFYJnNARNXO4wWFAY-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="262" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-77" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="308" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-78" parent="u3UPFYJnNARNXO4wWFAY-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-79" parent="u3UPFYJnNARNXO4wWFAY-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="tipo_usuario" vertex="1">
          <mxGeometry height="43" width="198" x="64" as="geometry">
            <mxRectangle height="43" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-80" parent="u3UPFYJnNARNXO4wWFAY-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="262" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-81" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="36" width="308" y="215" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-82" parent="u3UPFYJnNARNXO4wWFAY-81" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="36" width="64" as="geometry">
            <mxRectangle height="36" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-83" parent="u3UPFYJnNARNXO4wWFAY-81" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="necesidad_accesibilidad" vertex="1">
          <mxGeometry height="36" width="198" x="64" as="geometry">
            <mxRectangle height="36" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-84" parent="u3UPFYJnNARNXO4wWFAY-81" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="36" width="46" x="262" as="geometry">
            <mxRectangle height="36" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-85" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="308" y="251" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-86" parent="u3UPFYJnNARNXO4wWFAY-85" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-87" parent="u3UPFYJnNARNXO4wWFAY-85" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="telefono" vertex="1">
          <mxGeometry height="43" width="198" x="64" as="geometry">
            <mxRectangle height="43" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-88" parent="u3UPFYJnNARNXO4wWFAY-85" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="262" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-89" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="308" y="294" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-90" parent="u3UPFYJnNARNXO4wWFAY-89" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-91" parent="u3UPFYJnNARNXO4wWFAY-89" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="direccion" vertex="1">
          <mxGeometry height="43" width="198" x="64" as="geometry">
            <mxRectangle height="43" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-92" parent="u3UPFYJnNARNXO4wWFAY-89" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="262" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-93" parent="u3UPFYJnNARNXO4wWFAY-64" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="308" y="337" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-94" parent="u3UPFYJnNARNXO4wWFAY-93" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-95" parent="u3UPFYJnNARNXO4wWFAY-93" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_registro" vertex="1">
          <mxGeometry height="43" width="198" x="64" as="geometry">
            <mxRectangle height="43" width="198" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-96" parent="u3UPFYJnNARNXO4wWFAY-93" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="262" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="PERSONAL" mermaidId="n:PERSONAL" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="PERSONAL" id="u3UPFYJnNARNXO4wWFAY-97">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="258" width="342" x="1600" y="260" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-98" parent="u3UPFYJnNARNXO4wWFAY-97" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="342" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-99" parent="u3UPFYJnNARNXO4wWFAY-98" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-100" parent="u3UPFYJnNARNXO4wWFAY-98" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_personal" vertex="1">
          <mxGeometry height="43" width="214" x="82" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-101" parent="u3UPFYJnNARNXO4wWFAY-98" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="296" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-102" parent="u3UPFYJnNARNXO4wWFAY-97" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="342" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-103" parent="u3UPFYJnNARNXO4wWFAY-102" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-104" parent="u3UPFYJnNARNXO4wWFAY-102" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="cuenta_id" vertex="1">
          <mxGeometry height="43" width="214" x="82" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-105" parent="u3UPFYJnNARNXO4wWFAY-102" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="296" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-106" parent="u3UPFYJnNARNXO4wWFAY-97" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="342" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-107" parent="u3UPFYJnNARNXO4wWFAY-106" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-108" parent="u3UPFYJnNARNXO4wWFAY-106" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="nombre" vertex="1">
          <mxGeometry height="43" width="214" x="82" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-109" parent="u3UPFYJnNARNXO4wWFAY-106" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="296" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-110" parent="u3UPFYJnNARNXO4wWFAY-97" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="342" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-111" parent="u3UPFYJnNARNXO4wWFAY-110" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-112" parent="u3UPFYJnNARNXO4wWFAY-110" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="rol" vertex="1">
          <mxGeometry height="43" width="214" x="82" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-113" parent="u3UPFYJnNARNXO4wWFAY-110" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="296" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-114" parent="u3UPFYJnNARNXO4wWFAY-97" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="342" y="215" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-115" parent="u3UPFYJnNARNXO4wWFAY-114" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="boolean" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-116" parent="u3UPFYJnNARNXO4wWFAY-114" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="capacitacion_accesibilidad" vertex="1">
          <mxGeometry height="43" width="214" x="82" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-117" parent="u3UPFYJnNARNXO4wWFAY-114" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="296" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="CATEGORIA" mermaidId="n:CATEGORIA" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="CATEGORIA" id="u3UPFYJnNARNXO4wWFAY-118">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="129" width="222" x="763" y="220" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-119" parent="u3UPFYJnNARNXO4wWFAY-118" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="222" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-120" parent="u3UPFYJnNARNXO4wWFAY-119" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-121" parent="u3UPFYJnNARNXO4wWFAY-119" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_categoria" vertex="1">
          <mxGeometry height="43" width="112" x="64" as="geometry">
            <mxRectangle height="43" width="112" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-122" parent="u3UPFYJnNARNXO4wWFAY-119" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="176" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-123" parent="u3UPFYJnNARNXO4wWFAY-118" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="222" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-124" parent="u3UPFYJnNARNXO4wWFAY-123" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-125" parent="u3UPFYJnNARNXO4wWFAY-123" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="nombre" vertex="1">
          <mxGeometry height="43" width="112" x="64" as="geometry">
            <mxRectangle height="43" width="112" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-126" parent="u3UPFYJnNARNXO4wWFAY-123" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="176" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="LIBRO" mermaidId="n:LIBRO" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="LIBRO" id="u3UPFYJnNARNXO4wWFAY-127">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="301" width="265" x="597" y="536" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-128" parent="u3UPFYJnNARNXO4wWFAY-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="265" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-129" parent="u3UPFYJnNARNXO4wWFAY-128" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-130" parent="u3UPFYJnNARNXO4wWFAY-128" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_libro" vertex="1">
          <mxGeometry height="43" width="155" x="64" as="geometry">
            <mxRectangle height="43" width="155" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-131" parent="u3UPFYJnNARNXO4wWFAY-128" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="219" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-132" parent="u3UPFYJnNARNXO4wWFAY-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="265" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-133" parent="u3UPFYJnNARNXO4wWFAY-132" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-134" parent="u3UPFYJnNARNXO4wWFAY-132" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="titulo" vertex="1">
          <mxGeometry height="43" width="155" x="64" as="geometry">
            <mxRectangle height="43" width="155" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-135" parent="u3UPFYJnNARNXO4wWFAY-132" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="219" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-136" parent="u3UPFYJnNARNXO4wWFAY-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="265" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-137" parent="u3UPFYJnNARNXO4wWFAY-136" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-138" parent="u3UPFYJnNARNXO4wWFAY-136" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="isbn" vertex="1">
          <mxGeometry height="43" width="155" x="64" as="geometry">
            <mxRectangle height="43" width="155" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-139" parent="u3UPFYJnNARNXO4wWFAY-136" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="219" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-140" parent="u3UPFYJnNARNXO4wWFAY-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="265" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-141" parent="u3UPFYJnNARNXO4wWFAY-140" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-142" parent="u3UPFYJnNARNXO4wWFAY-140" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="categoria_id" vertex="1">
          <mxGeometry height="43" width="155" x="64" as="geometry">
            <mxRectangle height="43" width="155" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-143" parent="u3UPFYJnNARNXO4wWFAY-140" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="219" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-144" parent="u3UPFYJnNARNXO4wWFAY-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="265" y="215" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-145" parent="u3UPFYJnNARNXO4wWFAY-144" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-146" parent="u3UPFYJnNARNXO4wWFAY-144" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="idioma" vertex="1">
          <mxGeometry height="43" width="155" x="64" as="geometry">
            <mxRectangle height="43" width="155" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-147" parent="u3UPFYJnNARNXO4wWFAY-144" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="219" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-148" parent="u3UPFYJnNARNXO4wWFAY-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="265" y="258" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-149" parent="u3UPFYJnNARNXO4wWFAY-148" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-150" parent="u3UPFYJnNARNXO4wWFAY-148" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="formato_accesible" vertex="1">
          <mxGeometry height="43" width="155" x="64" as="geometry">
            <mxRectangle height="43" width="155" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-151" parent="u3UPFYJnNARNXO4wWFAY-148" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="219" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="EJEMPLAR" mermaidId="n:EJEMPLAR" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="EJEMPLAR" id="u3UPFYJnNARNXO4wWFAY-152">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="215" width="218" x="590" y="1080" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-153" parent="u3UPFYJnNARNXO4wWFAY-152" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="218" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-154" parent="u3UPFYJnNARNXO4wWFAY-153" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-155" parent="u3UPFYJnNARNXO4wWFAY-153" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_ejemplar" vertex="1">
          <mxGeometry height="43" width="108" x="64" as="geometry">
            <mxRectangle height="43" width="108" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-156" parent="u3UPFYJnNARNXO4wWFAY-153" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="172" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-157" parent="u3UPFYJnNARNXO4wWFAY-152" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="218" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-158" parent="u3UPFYJnNARNXO4wWFAY-157" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-159" parent="u3UPFYJnNARNXO4wWFAY-157" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="libro_id" vertex="1">
          <mxGeometry height="43" width="108" x="64" as="geometry">
            <mxRectangle height="43" width="108" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-160" parent="u3UPFYJnNARNXO4wWFAY-157" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="172" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-161" parent="u3UPFYJnNARNXO4wWFAY-152" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="218" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-162" parent="u3UPFYJnNARNXO4wWFAY-161" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-163" parent="u3UPFYJnNARNXO4wWFAY-161" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="estado" vertex="1">
          <mxGeometry height="43" width="108" x="64" as="geometry">
            <mxRectangle height="43" width="108" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-164" parent="u3UPFYJnNARNXO4wWFAY-161" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="172" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-165" parent="u3UPFYJnNARNXO4wWFAY-152" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="218" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-166" parent="u3UPFYJnNARNXO4wWFAY-165" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-167" parent="u3UPFYJnNARNXO4wWFAY-165" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="ubicacion" vertex="1">
          <mxGeometry height="43" width="108" x="64" as="geometry">
            <mxRectangle height="43" width="108" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-168" parent="u3UPFYJnNARNXO4wWFAY-165" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="172" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="LIBRO_AUTOR" mermaidId="n:LIBRO_AUTOR" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="LIBRO_AUTOR" id="u3UPFYJnNARNXO4wWFAY-169">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="129" width="196" x="919" y="1128" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-170" parent="u3UPFYJnNARNXO4wWFAY-169" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="196" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-171" parent="u3UPFYJnNARNXO4wWFAY-170" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="42" as="geometry">
            <mxRectangle height="43" width="42" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-172" parent="u3UPFYJnNARNXO4wWFAY-170" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="libro_id" vertex="1">
          <mxGeometry height="43" width="83" x="42" as="geometry">
            <mxRectangle height="43" width="83" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-173" parent="u3UPFYJnNARNXO4wWFAY-170" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK,FK" vertex="1">
          <mxGeometry height="43" width="71" x="125" as="geometry">
            <mxRectangle height="43" width="71" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-174" parent="u3UPFYJnNARNXO4wWFAY-169" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="196" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-175" parent="u3UPFYJnNARNXO4wWFAY-174" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="42" as="geometry">
            <mxRectangle height="43" width="42" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-176" parent="u3UPFYJnNARNXO4wWFAY-174" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="autor_id" vertex="1">
          <mxGeometry height="43" width="83" x="42" as="geometry">
            <mxRectangle height="43" width="83" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-177" parent="u3UPFYJnNARNXO4wWFAY-174" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK,FK" vertex="1">
          <mxGeometry height="43" width="71" x="125" as="geometry">
            <mxRectangle height="43" width="71" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="AUTOR" mermaidId="n:AUTOR" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="AUTOR" id="u3UPFYJnNARNXO4wWFAY-178">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="129" width="193" x="985" y="622" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-179" parent="u3UPFYJnNARNXO4wWFAY-178" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="193" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-180" parent="u3UPFYJnNARNXO4wWFAY-179" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-181" parent="u3UPFYJnNARNXO4wWFAY-179" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_autor" vertex="1">
          <mxGeometry height="43" width="83" x="64" as="geometry">
            <mxRectangle height="43" width="83" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-182" parent="u3UPFYJnNARNXO4wWFAY-179" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="147" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-183" parent="u3UPFYJnNARNXO4wWFAY-178" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="193" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-184" parent="u3UPFYJnNARNXO4wWFAY-183" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-185" parent="u3UPFYJnNARNXO4wWFAY-183" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="nombre" vertex="1">
          <mxGeometry height="43" width="83" x="64" as="geometry">
            <mxRectangle height="43" width="83" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-186" parent="u3UPFYJnNARNXO4wWFAY-183" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="147" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="PRESTAMO" mermaidId="n:PRESTAMO" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="PRESTAMO" id="u3UPFYJnNARNXO4wWFAY-187">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="351" width="324" x="414" y="1610" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-188" parent="u3UPFYJnNARNXO4wWFAY-187" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="324" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-189" parent="u3UPFYJnNARNXO4wWFAY-188" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-190" parent="u3UPFYJnNARNXO4wWFAY-188" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_prestamo" vertex="1">
          <mxGeometry height="43" width="214" x="64" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-191" parent="u3UPFYJnNARNXO4wWFAY-188" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="278" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-192" parent="u3UPFYJnNARNXO4wWFAY-187" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="324" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-193" parent="u3UPFYJnNARNXO4wWFAY-192" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-194" parent="u3UPFYJnNARNXO4wWFAY-192" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="usuario_id" vertex="1">
          <mxGeometry height="43" width="214" x="64" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-195" parent="u3UPFYJnNARNXO4wWFAY-192" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="278" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-196" parent="u3UPFYJnNARNXO4wWFAY-187" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="324" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-197" parent="u3UPFYJnNARNXO4wWFAY-196" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-198" parent="u3UPFYJnNARNXO4wWFAY-196" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="ejemplar_id" vertex="1">
          <mxGeometry height="43" width="214" x="64" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-199" parent="u3UPFYJnNARNXO4wWFAY-196" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="278" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-200" parent="u3UPFYJnNARNXO4wWFAY-187" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="324" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-201" parent="u3UPFYJnNARNXO4wWFAY-200" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-202" parent="u3UPFYJnNARNXO4wWFAY-200" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_prestamo" vertex="1">
          <mxGeometry height="43" width="214" x="64" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-203" parent="u3UPFYJnNARNXO4wWFAY-200" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="278" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-204" parent="u3UPFYJnNARNXO4wWFAY-187" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="50" width="324" y="215" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-205" parent="u3UPFYJnNARNXO4wWFAY-204" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="50" width="64" as="geometry">
            <mxRectangle height="50" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-206" parent="u3UPFYJnNARNXO4wWFAY-204" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_devolucion_prevista" vertex="1">
          <mxGeometry height="50" width="214" x="64" as="geometry">
            <mxRectangle height="50" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-207" parent="u3UPFYJnNARNXO4wWFAY-204" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="50" width="46" x="278" as="geometry">
            <mxRectangle height="50" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-208" parent="u3UPFYJnNARNXO4wWFAY-187" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="324" y="265" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-209" parent="u3UPFYJnNARNXO4wWFAY-208" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-210" parent="u3UPFYJnNARNXO4wWFAY-208" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_devolucion_real" vertex="1">
          <mxGeometry height="43" width="214" x="64" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-211" parent="u3UPFYJnNARNXO4wWFAY-208" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="278" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-212" parent="u3UPFYJnNARNXO4wWFAY-187" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="324" y="308" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-213" parent="u3UPFYJnNARNXO4wWFAY-212" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-214" parent="u3UPFYJnNARNXO4wWFAY-212" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="estado" vertex="1">
          <mxGeometry height="43" width="214" x="64" as="geometry">
            <mxRectangle height="43" width="214" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-215" parent="u3UPFYJnNARNXO4wWFAY-212" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="278" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="SALA" mermaidId="n:SALA" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="SALA" id="u3UPFYJnNARNXO4wWFAY-216">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="215" width="220" x="1258" y="579" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-217" parent="u3UPFYJnNARNXO4wWFAY-216" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="220" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-218" parent="u3UPFYJnNARNXO4wWFAY-217" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-219" parent="u3UPFYJnNARNXO4wWFAY-217" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_sala" vertex="1">
          <mxGeometry height="43" width="92" x="82" as="geometry">
            <mxRectangle height="43" width="92" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-220" parent="u3UPFYJnNARNXO4wWFAY-217" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="174" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-221" parent="u3UPFYJnNARNXO4wWFAY-216" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="220" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-222" parent="u3UPFYJnNARNXO4wWFAY-221" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-223" parent="u3UPFYJnNARNXO4wWFAY-221" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="nombre" vertex="1">
          <mxGeometry height="43" width="92" x="82" as="geometry">
            <mxRectangle height="43" width="92" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-224" parent="u3UPFYJnNARNXO4wWFAY-221" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="174" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-225" parent="u3UPFYJnNARNXO4wWFAY-216" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="220" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-226" parent="u3UPFYJnNARNXO4wWFAY-225" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-227" parent="u3UPFYJnNARNXO4wWFAY-225" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="tipo" vertex="1">
          <mxGeometry height="43" width="92" x="82" as="geometry">
            <mxRectangle height="43" width="92" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-228" parent="u3UPFYJnNARNXO4wWFAY-225" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="174" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-229" parent="u3UPFYJnNARNXO4wWFAY-216" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="220" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-230" parent="u3UPFYJnNARNXO4wWFAY-229" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="boolean" vertex="1">
          <mxGeometry height="43" width="82" as="geometry">
            <mxRectangle height="43" width="82" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-231" parent="u3UPFYJnNARNXO4wWFAY-229" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="accesible" vertex="1">
          <mxGeometry height="43" width="92" x="82" as="geometry">
            <mxRectangle height="43" width="92" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-232" parent="u3UPFYJnNARNXO4wWFAY-229" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="174" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="ACTIVIDAD" mermaidId="n:ACTIVIDAD" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="ACTIVIDAD" id="u3UPFYJnNARNXO4wWFAY-233">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="301" width="244" x="1269" y="1042" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-234" parent="u3UPFYJnNARNXO4wWFAY-233" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="244" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-235" parent="u3UPFYJnNARNXO4wWFAY-234" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-236" parent="u3UPFYJnNARNXO4wWFAY-234" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="id_actividad" vertex="1">
          <mxGeometry height="43" width="134" x="64" as="geometry">
            <mxRectangle height="43" width="134" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-237" parent="u3UPFYJnNARNXO4wWFAY-234" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="46" x="198" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-238" parent="u3UPFYJnNARNXO4wWFAY-233" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="244" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-239" parent="u3UPFYJnNARNXO4wWFAY-238" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-240" parent="u3UPFYJnNARNXO4wWFAY-238" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="nombre" vertex="1">
          <mxGeometry height="43" width="134" x="64" as="geometry">
            <mxRectangle height="43" width="134" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-241" parent="u3UPFYJnNARNXO4wWFAY-238" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="198" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-242" parent="u3UPFYJnNARNXO4wWFAY-233" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="244" y="129" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-243" parent="u3UPFYJnNARNXO4wWFAY-242" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="string" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-244" parent="u3UPFYJnNARNXO4wWFAY-242" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="tipo" vertex="1">
          <mxGeometry height="43" width="134" x="64" as="geometry">
            <mxRectangle height="43" width="134" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-245" parent="u3UPFYJnNARNXO4wWFAY-242" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="198" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-246" parent="u3UPFYJnNARNXO4wWFAY-233" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="244" y="172" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-247" parent="u3UPFYJnNARNXO4wWFAY-246" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-248" parent="u3UPFYJnNARNXO4wWFAY-246" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha" vertex="1">
          <mxGeometry height="43" width="134" x="64" as="geometry">
            <mxRectangle height="43" width="134" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-249" parent="u3UPFYJnNARNXO4wWFAY-246" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="46" x="198" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-250" parent="u3UPFYJnNARNXO4wWFAY-233" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="244" y="215" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-251" parent="u3UPFYJnNARNXO4wWFAY-250" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-252" parent="u3UPFYJnNARNXO4wWFAY-250" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="sala_id" vertex="1">
          <mxGeometry height="43" width="134" x="64" as="geometry">
            <mxRectangle height="43" width="134" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-253" parent="u3UPFYJnNARNXO4wWFAY-250" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="198" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-254" parent="u3UPFYJnNARNXO4wWFAY-233" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="244" y="258" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-255" parent="u3UPFYJnNARNXO4wWFAY-254" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="64" as="geometry">
            <mxRectangle height="43" width="64" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-256" parent="u3UPFYJnNARNXO4wWFAY-254" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="responsable_id" vertex="1">
          <mxGeometry height="43" width="134" x="64" as="geometry">
            <mxRectangle height="43" width="134" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-257" parent="u3UPFYJnNARNXO4wWFAY-254" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="46" x="198" as="geometry">
            <mxRectangle height="43" width="46" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="USUARIO_ACTIVIDAD" mermaidId="n:USUARIO_ACTIVIDAD" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="USUARIO_ACTIVIDAD" id="u3UPFYJnNARNXO4wWFAY-258">
          <mxCell parent="u3UPFYJnNARNXO4wWFAY-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="222" width="276" x="965" y="1630" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-259" parent="u3UPFYJnNARNXO4wWFAY-258" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="43" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-260" parent="u3UPFYJnNARNXO4wWFAY-259" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="43" width="56" as="geometry">
            <mxRectangle height="43" width="56" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-261" parent="u3UPFYJnNARNXO4wWFAY-259" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="usuario_id" vertex="1">
          <mxGeometry height="43" width="149" x="56" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-262" parent="u3UPFYJnNARNXO4wWFAY-259" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK,FK" vertex="1">
          <mxGeometry height="43" width="71" x="205" as="geometry">
            <mxRectangle height="43" width="71" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-263" parent="u3UPFYJnNARNXO4wWFAY-258" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="93" width="276" y="86" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-264" parent="u3UPFYJnNARNXO4wWFAY-263" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="int" vertex="1">
          <mxGeometry height="93" width="56" as="geometry">
            <mxRectangle height="93" width="56" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-265" parent="u3UPFYJnNARNXO4wWFAY-263" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="actividad_id" vertex="1">
          <mxGeometry height="93" width="149" x="56" as="geometry">
            <mxRectangle height="93" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-266" parent="u3UPFYJnNARNXO4wWFAY-263" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK,FK" vertex="1">
          <mxGeometry height="93" width="71" x="205" as="geometry">
            <mxRectangle height="93" width="71" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-267" parent="u3UPFYJnNARNXO4wWFAY-258" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="179" as="geometry" />
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-268" parent="u3UPFYJnNARNXO4wWFAY-267" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="date" vertex="1">
          <mxGeometry height="43" width="56" as="geometry">
            <mxRectangle height="43" width="56" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-269" parent="u3UPFYJnNARNXO4wWFAY-267" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="fecha_inscripcion" vertex="1">
          <mxGeometry height="43" width="149" x="56" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="u3UPFYJnNARNXO4wWFAY-270" parent="u3UPFYJnNARNXO4wWFAY-267" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="71" x="205" as="geometry">
            <mxRectangle height="43" width="71" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:CUENTA-&gt;TOKEN#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.16;exitY=1;entryX=0.5;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-271">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-2" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.16;exitY=1;entryX=0.5;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-31">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="167" y="434" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : 1&quot;" mermaidId="e:CUENTA-&gt;USUARIO#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToOne;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.5;entryY=0;" mermaidBaseValue="&quot;1 : 1&quot;" id="u3UPFYJnNARNXO4wWFAY-272">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-2" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToOne;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.5;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-64">
            <mxGeometry relative="1" as="geometry" />
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : 1&quot;" mermaidId="e:CUENTA-&gt;PERSONAL#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToOne;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=1;exitY=0.84;entryX=0;entryY=0.5;" mermaidBaseValue="&quot;1 : 1&quot;" id="u3UPFYJnNARNXO4wWFAY-273">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-2" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToOne;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=1;exitY=0.84;entryX=0;entryY=0.5;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-97">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="1029" y="687" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:CATEGORIA-&gt;LIBRO#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.5;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-274">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-118" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.5;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-127">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="730" y="402" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:LIBRO-&gt;EJEMPLAR#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.16;exitY=1;entryX=0.5;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-275">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-127" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.16;exitY=1;entryX=0.5;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-152">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="719" y="961" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:LIBRO-&gt;LIBRO_AUTOR#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.84;exitY=1;entryX=0.16;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-276">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-127" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.84;exitY=1;entryX=0.16;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-169">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="950" y="983" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:AUTOR-&gt;LIBRO_AUTOR#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-277">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-178" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-169">
            <mxGeometry relative="1" as="geometry" />
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:USUARIO-&gt;PRESTAMO#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.84;exitY=1;entryX=0.16;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-278">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-64" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.84;exitY=1;entryX=0.16;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-187">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="277" y="1446" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:EJEMPLAR-&gt;PRESTAMO#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-279">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-152" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-187">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="719" y="1403" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:SALA-&gt;ACTIVIDAD#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.16;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-280">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-216" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.16;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-233">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="1368" y="918" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:PERSONAL-&gt;ACTIVIDAD#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-281">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-97" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-233">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="1729" y="929" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:USUARIO-&gt;USUARIO_ACTIVIDAD#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=1;exitY=0.84;entryX=0;entryY=0.16;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-282">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-64" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=1;exitY=0.84;entryX=0;entryY=0.16;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-258">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="876" y="1619" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="&quot;1 : N&quot;" mermaidId="e:ACTIVIDAD-&gt;USUARIO_ACTIVIDAD#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;" mermaidBaseValue="&quot;1 : N&quot;" id="u3UPFYJnNARNXO4wWFAY-283">
          <mxCell edge="1" parent="u3UPFYJnNARNXO4wWFAY-1" source="u3UPFYJnNARNXO4wWFAY-233" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;rounded=0;" target="u3UPFYJnNARNXO4wWFAY-258">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="1391" y="1467" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
