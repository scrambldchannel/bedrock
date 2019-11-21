601,100
602,"}Bedrock.Dim.Element.Create"
562,"NULL"
586,
585,
564,
565,"pEwai<^=0e4Gf0>9a<E7tw[N9J5@?2^\`i4:H5O?tjZ;n9m1cbmi`VRe@XVXvZc]HRDy6QcT_OQtd2UTGV4mPg:Q?]t0^JcT\4X^catc\l3@3_Qqj7B]RYt3AHe[c26?[:YcRMEdaTD[n_6rgRWWGF_1Dsk]Waqz7aG:Mi2ICtkB`5[iqI?V6BN2p;44k\x=IsSRrB70"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,
568,""""
570,
571,
569,0
592,0
599,1000
560,5
pDimension
pElement
pElementType
pInsertionPoint
pDebug
561,5
2
2
2
2
1
590,5
pDimension,""
pElement,""
pElementType,""
pInsertionPoint,""
pDebug,0
637,5
pDimension,"Mandatory: Dimension Name"
pElement,"Mandatory: Element Name"
pElementType,"Optional: Element Type N S C (default value N)"
pInsertionPoint,"Optional: Insertion point (default value blank)"
pDebug,"Optional: Debug Mode"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,104

#****Begin: Generated Statements***
#****End: Generated Statements****

#####################################################################################
##~~Copyright bedrocktm1.org 2011 www.bedrocktm1.org/how-to-licence.php Ver 3.1.0~~##
#####################################################################################

# This process will create new element in a dimension


### Constants ###

cProcess = 'Bedrock.Dim.Element.Create';
cTimeStamp = TimSt( Now, '\Y\m\d\h\i\s' );
sRandomInt = NumberToString( INT( RAND( ) * 1000 ));
cDebugFile = GetProcessErrorFileDirectory | cProcess | '.' | cTimeStamp | '.' | sRandomInt ;


### Initialise Debug ###

If( pDebug >= 1 );

  # Set debug file name
  sDebugFile = cDebugFile | 'Prolog.debug';

  # Log start time
  AsciiOutput( sDebugFile, 'Process Started: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

  # Log parameters
  AsciiOutput( sDebugFile, 'Parameters: pDimension   : ' | pDimension );
  AsciiOutput( sDebugFile, '            pElement         : ' | pElement );
  AsciiOutput( sDebugFile, '            pElementType : ' | pElementType );
  AsciiOutput( sDebugFile, '            pInsertionPoint: ' | pInsertionPoint );

EndIf;


### Validate Parameters ###

nErrors = 0;

# Validate dimension
If( Trim( pDimension ) @= '' );
  nErrors = 1;
  sMessage = 'No dimension specified';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;
If( DimensionExists( pDimension ) = 0 );
  nErrors = 1;
  sMessage = 'Dimension: ' | pDimension | ' does not exist on server.';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;

# Validate element
If( Trim( pElement ) @= '' );
  nErrors = 1;
  sMessage = 'No element specified';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;
If( DimIx( pDimension, pElement ) > 0 );
  nErrors = 1;
  sMessage = 'Element: ' | pElement | ' already exists in dimension: ' | pDimension;
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;

# Validate element type
If( pElementType @= '' ); pElementType = 'N'; EndIf;
pElementType = Upper( pElementType );
If( pElementType @<> 'N' & pElementType @<> 'C' & pElementType @<> 'S' );
  nErrors = 1;
  sMessage = 'Invalid element type: ' | pElementType;
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;

# Validate insertion point
If( Dimix( pDimension, pInsertionPoint ) = 0 );
  pInsertionPoint = '';
EndIf;


### Insert Element into dimension ###

If( pDebug <= 1 );
  DimensionElementInsert( pDimension, pInsertionPoint,  pElement, pElementType );
EndIf;


### End Prolog ###
573,4

#****Begin: Generated Statements***
#****End: Generated Statements****

574,4

#****Begin: Generated Statements***
#****End: Generated Statements****

575,35

#****Begin: Generated Statements***
#****End: Generated Statements****

#####################################################################################
##~~Copyright bedrocktm1.org 2011 www.bedrocktm1.org/how-to-licence.php Ver 3.1.0~~##
#####################################################################################


### Initialise Debug ###

If( pDebug >= 1 );

  # Set debug file name
  sDebugFile = cDebugFile | 'Epilog.debug';

  # Log errors
  If( nErrors <> 0 );
    AsciiOutput( sDebugFile, 'Errors Occurred' );
  EndIf;

  # Log finish time
  AsciiOutput( sDebugFile, 'Process Finished: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

EndIf;


### If errors occurred terminate process with a major error status ###

If( nErrors <> 0 );
  ProcessQuit;
EndIf;


### End Epilog ###
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,1
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,1
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
