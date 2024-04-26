<%@ page import="com.example.project.models.Mahasiswa" %>
<% 
   Mahasiswa m = (mahasiswa) request.getAttribute("mhs");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mahasiswa</title>
    </head>
    <body>
        <h1>Form Mahasisa</h1>
        <form action="/update" method="post">
            <fieldset>
                <p>
                    NIM<br />
                    <input type="text" name="nim" value="<%= m.getNim%>"required>
                    <input type="hidden" name="id" value="<%= m.getNim%>">
                </p>
                <p>
                    Nama<br />
                    <input type="text" name="nama" value="<%= m.getNama%>"required>
                </p>
                <p>
                    Usia<br />
                    <input type="number" name="usia" value="<%= m.getUsia%>" required>
                </p>
                <p>
                    <input type="submit"value="simpan">
                    <a href="/">Batal</a>
                </p>
            </fieldset>
        </form>
    </body>
</html>