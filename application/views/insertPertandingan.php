<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="<?php echo base_url(); ?>assets/Asset 6.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/insertPertandingan.css">
    <title>Register Pertandingan</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
                <div class="col-md-8 form">
                    <h2 class="tittle">REGISTER PERTANDINGAN</h2>
                    <form method="post" action="<?php echo base_url(); ?>AsianGames/addPertandingan">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="id">
                                        <p>ID Pertandingan</p>
                                        <input type="text" name="idpertandingan" id="idpertandingan" placeholder="ID Pertandingan" requred>
                                        <?php echo form_error('idpertandingan', '<small><font color="red">', '</font></small>'); ?>
                                    </div>
                                    <div class="fase">
                                        <p>Fase</p>
                                        <input type="text" name="fase" id="name" placeholder="Fase Pertandingan" requred>
                                        <?php echo form_error('fase', '<small><font color="red">', '</font></small>'); ?>
                                    </div>
                                    <div class="jadwal">
                                        <p>Jadwal Pertandingan</p>
                                        <input type="text" name="jadwal" id="jadwal" placeholder="Jadwal Pertandingan" requred>
                                        <?php echo form_error('jadwal', '<small><font color="red">', '</font></small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-success">ADD</button>
                                </div>
                            </div>
                        </div>           
                    </form>
                </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</body>
</html>