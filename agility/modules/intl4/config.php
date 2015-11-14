<?php
class INTL4 extends Federations {

    function __construct() {
        $this->config= array (
            'ID'    => 8,
            'Name'  => 'Intl-4',
            'LongName' => 'International Contest - 4 heights',
            'Logo'     => '/agility/modules/intl4/wao.png',
            'ParentLogo'   => '/agility/modules/intl4/wao.png',
            'WebURL' => 'http://www.worldagilityopen.com/',
            'ParentWebURL' => 'http://www.worldagilityopen.com/',
            'Heights' => 4,
            'Grades' => 2, // no really sense in international contests, but....
            'WideLicense' => false, // some federations need extra print space to show license ID
            'Recorridos' => array('Common course',"Standard + Medium / Small + Toy","Separate courses"),
            'ListaGrados'    => array (
                '-' => 'Not especified',
                'Baja' => 'Retired',
                'GI' => 'Grade I',
                'GII'=> 'Grade II',
                'GIII' => 'Grade III', // no existe
                'P.A.' => 'Grade 0',
                'P.B.' => 'Trial dog',
                'Ret.' => 'Retirado',
            ),
            'ListaCategorias' => array (
                '-' => 'Not especified',
                'L' => 'Large - 60',
                'M' => 'Medium - 50',
                'S' => 'Small - 40',
                'T' => 'Toy - 30'
            ),
            'InfoManga' => array(
                array('L' => _('Large'),         'M' => _('Medium'), 'S' => _('Small'),      'T' => _('Tiny')), // separate courses
                array('L' => _('Large+Medium'),  'M' => '',          'S' => _('Small+Tiny'), 'T' => ''), // mixed courses
                array('L' => _('Common course'), 'M' => '',          'S' => '',              'T' => '') // common
            ),
            'Modes' => array(array(/* separado */ 0, 1, 2, 5 ), array(/* mixto */ 6, 6, 7, 7 ), array(/* conjunto */ 8, 8, 8, 8 )),
            'ModeStrings' => array( // text to be shown on each category
                array(/* separado */ "Large", "Medium", "Small", "Tiny"),
                array(/* mixto */ "Large+Medium", "Large+Medium", "Small+Tiny", "Small+Tiny"),
                array(/* conjunto */ "Common course", "Common course", "Common course", "Common course")
            ),
            'Puntuaciones' => function() {} // to point to a function to evaluate califications
        );
    }
}
?>