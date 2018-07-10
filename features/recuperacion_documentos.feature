Feature: Recuperacion Documental

  Como usuario externo necesito recuperar documentos del sistema
  para explotar los datos aportados

  Scenario Outline: Juan accede a la url del sistema de informacion 'webapi'
  intrduce el código de estudiante '1A' y el tipo 'DNI'
  y obtiene el DNI de dicho estudiante
    Given Sistema de información 'webapi' funcionando
      And Juan está logado en el sistema 'webapi'
      And <codigo_est> <existencia_cod> como código de estudiante
      And <tipo_documento> <existencia_tipo_doc> como tipo de dato
      And El fichero resultante <existencia_fichero>
     When Juan introduce codigo estudiante <codigo_est>
      And Juan introduce tipo de documento <tipo_documento>
     Then Juan obtiene un <tipo_archivo> con la info

     Examples: Datos input
     | codigo_est | tipo_documento | tipo_archivo | existencia_cod | existencia_tipo_doc | existencia_fichero |
     | '1A'       | 'DNI'          | descargable  | existe         | existe              | existe             |
     | '1B'       | 'DNI'          | descargable  | no existe      | existe              | existe             |
     | '1A'       | 'FOTO'         | descargable  | existe         | no existe           | existe             |
     | '1B'       | 'FOTO'         | descargable  | existe         | existe              | no existe          |