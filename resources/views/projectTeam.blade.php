@extends('layouts.app')

@section('title', 'Project Team')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Odaberi članove projektnog tima</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="post" action="/createTeam">
                      <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
                          Članovi projektnog tima: <br><br>
                          <!-- <select name="user_id" multiple="multiple">
                            <?php

                              $user = Auth::user();
                              //print($user->name);
                              $clanProjektnogTima = DB::table('users')->pluck('email');
                              // $idClanProjektnogTima = DB::table('users')->where('email', $clanProjektnogTima)->pluck('id');
                              // print($idClanProjektnogTima);
                              $currentUser = $user->email;
                              //print($currentUser);
                              //print($clanProjektnogTima);

                              $size = sizeof($clanProjektnogTima);
                              //echo($size);


                              for($i=0; $i<$size; $i++){
                                if($currentUser == $clanProjektnogTima[$i]) {
                                  //echo("current: ");
                                  //print($currentUser);
                                  //echo("<br>");
                                } else {
                                  //$moguciClanoviProjektnogTima[] = "";
                                  //$moguciClanoviProjektnogTima .= $clanProjektnogTima[$i];
                                  //print_r($moguciClanoviProjektnogTima);
                                  //uzima userov id iz tablice
                                  $idClanProjektnogTima = DB::table('users')->where('email', $clanProjektnogTima[$i])->pluck('id');
                                  $trimmedIdClanProjektnogTima = trim($idClanProjektnogTima, " []");
                                  //print($trimmedIdClanProjektnogTima);
                                  //print($idClanProjektnogTima);
                                  //print_r($clanProjektnogTima[$i]);

                                  //echo "<option value=" .$trimmedIdClanProjektnogTima. " name=\"user_id\">".$clanProjektnogTima[$i]."  </option><br>";
                                  echo "<option value=" .$trimmedIdClanProjektnogTima. ">".$clanProjektnogTima[$i]."  </option><br>";

                                  //echo($i);
                                  //echo " <input type=\"checkbox\" value=" .$trimmedIdClanProjektnogTima. " name=\"user_id\"><br>";
                                  //echo("<br>");
                                  }

                                }

                              // foreach ('user_id' as $selectedOption)
                              //   echo $selectedOption."\n";
                              ?> <br>
                            </select> -->
                            <?php

                              $user = Auth::user();
                              //print($user->name);
                              $clanProjektnogTima = DB::table('users')->pluck('email');
                              // $idClanProjektnogTima = DB::table('users')->where('email', $clanProjektnogTima)->pluck('id');
                              // print($idClanProjektnogTima);
                              $currentUser = $user->email;
                              //print($currentUser);
                              //print($clanProjektnogTima);

                              $size = sizeof($clanProjektnogTima);
                              //echo($size);

                              $counter = 0;

                              for($i=0; $i<$size; $i++){
                                if($currentUser == $clanProjektnogTima[$i]) {
                                  //echo("current: ");
                                  //print($currentUser);
                                  //echo("<br>");
                                } else {
                                  //$moguciClanoviProjektnogTima[] = "";
                                  //$moguciClanoviProjektnogTima .= $clanProjektnogTima[$i];
                                  //print_r($moguciClanoviProjektnogTima);
                                  //uzima userov id iz tablice
                                  $counter++;

                                  $idClanProjektnogTima = DB::table('users')->where('email', $clanProjektnogTima[$i])->pluck('id');
                                  $trimmedIdClanProjektnogTima = trim($idClanProjektnogTima, " []");
                                  //print($trimmedIdClanProjektnogTima);
                                  //print($idClanProjektnogTima);
                                  //print_r($clanProjektnogTima[$i]);

                                  //echo "<option value=" .$trimmedIdClanProjektnogTima. " name=\"user_id\">".$clanProjektnogTima[$i]."  </option><br>";
                                  //echo "<option value=" .$trimmedIdClanProjektnogTima. ">".$clanProjektnogTima[$i]."  </option><br>";
                                  echo "<input type=\"checkbox\" name=\"user_id\" value=" .$trimmedIdClanProjektnogTima. ">" .$clanProjektnogTima[$i]."<br>";

                                  //echo($i);
                                  //echo " <input type=\"checkbox\" value=" .$trimmedIdClanProjektnogTima. " name=\"user_id\"><br>";
                                  //echo("<br>");
                                  }

                                }


                              
                              ?>

                            <div>

                              <?php
                              //trazenje velicine array-a koji sadrzi id-e, uzima zadnji element i to je project_id
                                $idProjekta = DB::table('projects')->pluck('id');
                                //print($idProjekta);
                                $sizeId = sizeof($idProjekta);
                                //print($sizeId);
                                //print($idProjekta[$sizeId - 1]);
                               ?>

                              <input type="hidden" name="project_id" value="<?php print($idProjekta[$sizeId - 1]); ?>">
                            </div>
                        <div>
                           <input type="submit" name="submit">
                        </div>
                      </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection('content')
