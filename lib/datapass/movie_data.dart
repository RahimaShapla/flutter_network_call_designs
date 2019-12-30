import 'dart:async';

import 'package:ebuy_flutter/model/dummy_movie_response.dart';
import 'package:ebuy_flutter/network_api/api_response.dart';
import 'package:ebuy_flutter/repository/dummy_repository.dart';

class MovieBloc {
  MovieRepository _movieRepository;
  StreamController _movieListController;

  StreamSink<ApiResponse<List<Movie>>> get movieListSink {
    _movieListController.sink;
  }

  Stream<ApiResponse<List<Movie>>> get movieListStream {
    _movieListController.stream;
  }

  MovieBloc() {
    _movieListController = StreamController<ApiResponse<List<Movie>>>();
    _movieRepository = MovieRepository();
  }

  fetchMovieList() async {
    movieListSink.add(ApiResponse.loading("Fetching Popular Movies"));
    try {
      List<Movie> movies = await _movieRepository.fetchMovieList();
      movieListSink.add(ApiResponse.completed(movies));
    } on Exception catch (e) {
      movieListSink.add(ApiResponse.error(e.toString()));
    }
  }

  dispose() {
    _movieListController?.close();
  }
}
