/**
 * @file
 *
 * @ingroup
 *
 * @brief This is the interface file for the library.
 *
 * @author Alexandre Lopes
 *
 * @copyright Open-domain
 *
 */

#ifndef LIBTEST_H
#define LIBTEST_H

#ifdef BUILD_LIBTEST_DLL
#define LIBTEST_DLL __declspec(dllexport)
#else
#define LIBTEST_DLL __declspec(dllimport)
#endif

/*
 * @brief Multiplies two doubles.
 *
 * @return Result.
 *
 */ 
double LIBTEST_DLL multiply(double x, double y);

#endif
