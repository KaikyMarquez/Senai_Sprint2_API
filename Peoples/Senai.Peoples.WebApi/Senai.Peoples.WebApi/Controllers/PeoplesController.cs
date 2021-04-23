using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.Peoples.WebApi.Domains;
using Senai.Peoples.WebApi.Interfaces;
using Senai.Peoples.WebApi.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.Peoples.WebApi.Controllers
{
    [Produces("Application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class PeoplesController : ControllerBase
    {
    private IPeoplesRepository _peoplesRepository { get; set; }

        public PeoplesController()
        {
            _peoplesRepository = new PeoplesRepository();
        }
        [HttpGet]
        public IActionResult Get()
        {

            List<PeoplesDomain> listaNomes = _peoplesRepository.ListarTodos();


            return Ok(listaNomes);
        }


        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {

            PeoplesDomain nomeBuscado = _peoplesRepository.BuscarPorId(id);


            if (nomeBuscado == null)
            {

                return NotFound("Nenhum nome encontrado!");
            }


            return Ok(nomeBuscado);
        }


        [HttpPost]
        public IActionResult Post(PeoplesDomain novoNome)
        {

            _peoplesRepository.Cadastrar(novoNome);


            return StatusCode(201);
        }


        [HttpPut]
        public IActionResult PutIdBody(PeoplesDomain nomeAtualizado)
        {

            PeoplesDomain nomeBuscado = _peoplesRepository.BuscarPorId(nomeAtualizado.idfuncionario);


            if (nomeBuscado != null)
            {

                try
                {

                    _peoplesRepository.AtualizarIdCorpo(nomeAtualizado);

                    return NoContent();
                }

                catch (Exception codErro)
                {

                    return BadRequest(codErro);
                }
            }


            return NotFound
                (
                    new
                    {
                        mensagem = "Nome não encontrado!"
                    }
                );
        }


        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {

            _peoplesRepository.Deletar(id);


            return StatusCode(204);
        }
    }
}

    

