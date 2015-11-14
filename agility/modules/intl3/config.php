<?php
class INTL3 extends Federations {

    function __construct() {
        $this->config= array (
            'ID'    => 9,
            'Name'  => 'Intl-3',
            'LongName' => 'International Contest - 3 heights',
            'Logo'     => '/agility/modules/intl3/fci.png',
            'ParentLogo'   => '/agility/modules/intl3/fci.png',
            'WebURL' => 'http://www.fci.org',
            'ParentWebURL' => 'http://www.fci.org',
            'Heights' => 3,
            'Grades' => 3, // not really sense in internatiolnal contests, but...
            'WideLicense' => false, // some federations need extra print space to show license ID
            'Recorridos' => array('Common course',"Standard / Midi + Mini","Separate courses"),
            'ListaGrados'    => array (
                '-' => 'Not especified',
                'Baja' => 'Temporary out',
                'GI' => 'Grade I',
                'GII'=> 'Grade II',
                'GIII' => 'Grade III', // no existe
                'P.A.' => 'Pre-Agility',
                'P.B.' => 'Trial dog',
                'Ret.' => 'Retired',
            ),
            'ListaCategorias' => array (
                '-' => 'Sin especificar',
                'L' => 'Standard',
                'M' => 'Medium',
                'S' => 'Small',
                'T' => 'Tiny' // not used
            ),
            'InfoManga' => array(
                array('L' => _('Large'),         'M' => _('Medium'),         'S' => _('Small'), 'T' => ''), // separate courses
                array('L' => _('Large'),         'M' => _('Medium+Small'),   'S' => '',         'T' => ''), // mixed courses
                array('L' => _('Common course'), 'M' => '',                  'S' => '',         'T' => '') // common
            ),
            'Modes' => array(array(/* separado */ 0, 1, 2, -1), array(/* mixto */ 0, 3, 3. -1), array(/* conjunto */ 4, 4, 4, -1 )),
            'ModeStrings' => array( // text to be shown on each category
                array(/* separado */ "Large", "Medium", "Small", "Invalid"),
                array(/* mixto */ "Large", "Medium+Small", "Medium+Small", "Invalid"),
                array(/* conjunto */ "Common course", "Common course", "Common course", "Invalid")
            ),
            'Puntuaciones' => function() {} // to point to a function to evaluate califications
        );
    }
}
?>