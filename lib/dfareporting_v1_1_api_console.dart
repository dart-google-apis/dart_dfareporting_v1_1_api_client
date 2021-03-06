library dfareporting_v1_1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_dfareporting_v1_1_api/src/console_client.dart';

import "package:google_dfareporting_v1_1_api/dfareporting_v1_1_api_client.dart";

/** Lets you create, run and download reports. */
@deprecated
class Dfareporting extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage DoubleClick for Advertisers reports */
  static const String DFAREPORTING_SCOPE = "https://www.googleapis.com/auth/dfareporting";

  final oauth2.OAuth2Console auth;

  Dfareporting([oauth2.OAuth2Console this.auth]);
}
