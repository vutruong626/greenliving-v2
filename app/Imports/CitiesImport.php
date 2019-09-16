<?php

namespace App\Imports;

use App\Imports;
use Maatwebsite\Excel\Concerns\ToModel;
use App\Models\Province;
use App\Models\District;
use App\Models\Ward;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class CitiesImport implements ToCollection
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function collection(Collection $rows)
    {
        for ($i = 0; $i < count($rows); $i++)
        {
            if ($i == 0) {
                continue;
            }
            // Table::create([
            //     'city_name'     => $rows[$i][0],
            //     'city_id'       => $rows[$i][1],
            //     'district_name' => $rows[$i][2],
            //     'district_id'   => $rows[$i][3],
            //     'ward_name'     => $rows[$i][4],
            //     'ward_id'       => $rows[$i][5],
            // ]);
            $city = Province::select('code','id')->where('code',$rows[$i][1])->first();

            if($city){
                $district = District::select('code','id')->where('code',$rows[$i][3])->first();
                if($district){
                    Ward::create([
                        'code'            =>  $rows[$i][5],
                        'name'          =>  $rows[$i][4],
                        'district_id'   =>  $district->id,
                    ]);
                }else{
                    District::create([
                        'code'            =>  $rows[$i][3],
                        'name'          =>  $rows[$i][2],
                        'province_id'   =>  $city->id,
                    ]);
                }
            }else{

                $city = Province::create([
                    'code'            =>  $rows[$i][1],
                    'name'          =>  $rows[$i][0],
    
                ]);
                $district = District::create([
                    'code'            =>  $rows[$i][3],
                    'name'          =>  $rows[$i][2],
                    'province_id'   =>  $city->id,
                ]);

                Ward::create([
                    'code'            =>  $rows[$i][5],
                    'name'          =>  $rows[$i][4],
                    'district_id'   =>  $district->id,
                ]);

            }
           
        }
    }
}
